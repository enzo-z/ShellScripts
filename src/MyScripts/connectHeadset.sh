#!/usr/bin/zsh


# TODO: Spawn another shell with bluetoothctl, scan on, after some seconds, destroy it, then execute this script

devices=$(bluetoothctl -- devices) 
headset_mac="D9:2F:A2:C0:90:A2" # Philips TAT1215

echo $devices | cut -f2 -d ' ' | \
while read uuid; do
	if [[ $uuid == $headset_mac ]]; then
		echo "Headset encontrado"
		bluetoothctl -- trust $uuid 
		sleep 5
		bluetoothctl -- connect $uuid 
		sleep 5
		connected=1
	fi
done

# TODO : In case of erros &2, echo errors

if (( connected != 1 ))
then 
	echo "Nao conseguiu conectar";
fi


