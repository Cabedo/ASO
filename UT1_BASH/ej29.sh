#!/bin/bash

informe="informe_ips.txt"

ip_info=$(ip -4 -o addr show | grep -v '127.0.0.1' | head -n1)
ip=$(echo "$ip_info" | awk '{print $4}' | cut -d/ -f1)
cidr=$(echo "$ip_info" | awk '{print $4}' | cut -d/ -f2)
broadcast=$(echo "$ip_info" | awk '{print $6}')
mask=$(ipcalc -m "$ip/$cidr" | cut -d= -f2)

echo "===== INFORME DE RED =====" > "$informe"
echo "IP local: $ip" | tee -a "$informe"
echo "CIDR: /$cidr" | tee -a "$informe"
echo "Máscara: $mask" | tee -a "$informe"
echo "Broadcast: $broadcast" | tee -a "$informe"
echo "==========================" | tee -a "$informe"
echo "" | tee -a "$informe"

echo "Analizando IPs libres..." | tee -a "$informe"
base=$(echo "$ip" | cut -d. -f1-3)
for i in {1..254}; do
    ping -c1 -W1 "$base.$i" &>/dev/null
    if [ $? -eq 0 ]; then
        echo "$base.$i OCUPADA" | tee -a "$informe"
    else
        echo "$base.$i LIBRE" | tee -a "$informe"
    fi
done

echo "" | tee -a "$informe"
echo "Informe guardado en $informe"

