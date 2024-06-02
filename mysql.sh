echo mysql.sh file

if [ -z "$1" ]; then
  echo "INput MySQL Password is Missing"
  exit 1
fi

dnf install mysql-server -y
systemctl enable mysqld
systemctl start mysqld

mysql_secure_installation --set-root-pass $1 &>>/tmp/expense.log


echo end of mysql.sh

