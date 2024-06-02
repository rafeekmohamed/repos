echo mysql.sh file

dnf install mysql-server -y
systemctl enable mysqld
systemctl start mysqld

mysql_secure_installation --set-root-pass $1 &>>/tmp/expense.log


echo end of mysql.sh

