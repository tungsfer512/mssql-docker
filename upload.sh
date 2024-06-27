#!/usr/bin/env sh

if [ "$1" = "-h" ] || [ "$1" = "help" ] || [ "$1" = "--help" ]; then
  echo ""
  echo "====================================================================="
  echo "SU DUNG: ./upload.sh <bak_path> <ip_server> <ssh_port_server>"
  echo "bak_path: duong dan den file BAK tren local"
  echo "ip_server: IP cua server MSSQL"
  echo "ssh_port_server: Cong SSH cuar server MSSQL"
  echo "====================================================================="
  echo ""
  exit 1
fi
if [ -z $1 ]; then
  echo "CHUA KHAI BAO DUONG DAN DEN FILE BAK"
  echo ""
  echo "====================================================================="
  echo "SU DUNG: ./upload.sh <bak_path> <ip_server> <ssh_port_server>"
  echo "bak_path: duong dan den file BAK tren local"
  echo "ip_server: IP cua server MSSQL"
  echo "ssh_port_server: Cong SSH cuar server MSSQL"
  echo "====================================================================="
  echo ""
  exit 1
fi
if [ -z $2 ]; then
  echo "CHUA KHAI BAO IP SERVER"
  echo ""
  echo "====================================================================="
  echo "SU DUNG: ./upload.sh <bak_path> <ip_server> <ssh_port_server>"
  echo "bak_path: duong dan den file BAK tren local"
  echo "ip_server: IP cua server MSSQL"
  echo "ssh_port_server: Cong SSH cuar server MSSQL"
  echo "====================================================================="
  echo ""
  exit 1
fi
if [ -z $3 ]; then
  echo "CHUA KHAI BAO CONG SSH SERVER"
  echo ""
  echo "====================================================================="
  echo "SU DUNG: ./upload.sh <bak_path> <ip_server> <ssh_port_server>"
  echo "bak_path: duong dan den file BAK tren local"
  echo "ip_server: IP cua server MSSQL"
  echo "ssh_port_server: Cong SSH cuar server MSSQL"
  echo "====================================================================="
  echo ""
  exit 1
fi

OUT_FILE=$1
IP=$2
PORT=$3

sshpass -p root scp -P ${PORT} ${OUT_FILE} root@${IP}:/var/opt/mssql/data