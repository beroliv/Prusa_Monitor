Überwachung des 3D-Druckers und automatisches Starten/Stoppen des RTSP-Containers

Dieses Skript überwacht, ob der 3D-Drucker online ist.

Wenn der Drucker online ist, wird der RTSP-Container automatisch gestartet.
Wenn der Drucker offline ist, wird der Container gestoppt.
Das Skript läuft auf einer Synology NAS mit Portainer.

Hinweis:
Die IP-Adresse des Druckers, der Name des Containers sowie der Pfad zur Datei monitor.sh müssen an die eigene Umgebung angepasst werden.



Monitoring the 3D Printer and Automatically Starting/Stopping the RTSP Container

This script monitors whether the 3D printer is online.

If the printer is online, the RTSP container will be started automatically.
If the printer is offline, the container will be stopped.
The script runs on a Synology NAS with Portainer.

Note:
The printer’s IP address, the container name, and the path to the monitor.sh file must be adjusted to match your specific environment.

https://github.com/jtee3d/prusa_connect_rtsp
