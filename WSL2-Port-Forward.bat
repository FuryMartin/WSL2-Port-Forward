set WSL2_NAME=Debian

set LISTEN_PORT=22

wsl -d %WSL2_NAME% -u root -e /etc/init.d/ssh start

netsh interface portproxy delete v4tov4 listenport=%LISTEN_PORT% listenaddress=0.0.0.0

for /f "usebackq tokens=1" %%g in (`wsl -d %WSL2_NAME% hostname -I`) do set WSL2_IP_Address=%%g

netsh interface portproxy add v4tov4 listenport=%LISTEN_PORT% listenaddress=0.0.0.0 connectport=22 connectaddress=%WSL2_IP_Address%

pause
