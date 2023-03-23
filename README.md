# WSL2 Port Forward Helper
An easy-to-use WSL2 port forward helper.

[中文](./README-zh.md) | [English](./README.md)

## Usage
1. Download `WSL2-Port-Forward.bat`.
2. Edit `WSL2_NAME` to match your WSL2 distribution name. (you can use `wsl -l -v` to see your distribution name).
3. Edit `LISTEN_PORT` to the port you want to access from LANs (default is `22`).
4. Double-click `WSL2-Port-Forward.bat` to run the script.
5. (Optional) Use `ssh user@<Your Windows Machine IP> -p <LISTEN_PORT>` to remotely connect to your WSL2 server.
## Note
1. Before running this script, ensure that the ssh service is installed on your WSL2 distribution:
 ```bash
sudo apt-get update
sudo apt-get install openssh-server
```
2. Allow inbound traffic on port LISTEN_PORT in the firewall.
