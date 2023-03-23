# WSL2端口转发助手

一个易于使用的WSL2端口转发助手。

[中文](./README-zh.md) | [English](./README.md)

## 使用方法
1. 下载 `WSL2-Port-Forward.bat` 。
2. 将 `WSL2_NAME` 修改为你的WSL2发行版名称（你可以使用 `wsl -l -v` 命令查看您的发行版名称）。
3. 将 `LISTEN_PORT` 修改为你希望从局域网访问的端口号（默认为`22`）。
4. 双击运行 `WSL2-Port-Forward.bat` 脚本。
5. （可选）使用 `ssh user@<Windows主机IP> -p <LISTEN_PORT>` 命令远程连接到你的WSL2服务器。
## 注意事项
1. 运行此脚本之前，请确保你的WSL2上已安装 `ssh` 服务：
```bash
sudo apt-get update
sudo apt-get install openssh-server
```
2. 请在防火墙中放行入站方向的 `LISTEN_PORT` 端口。
