#bash lab2.sh
#sudo pass 0000
echo "Проверяем на наличие пользователей test1 test2 test3 guest, групп xusers yusers"
echo "Просмотр /etc/shadow"
read -s -n 1 #ожидание нажатия любой клавиши
sudo less /etc/shadow
echo "просмотр /etc/group"
read -s -n 1 #ожидание нажатия любой клавиши
sudo less /etc/group
echo "просмотр /etc/passwd"
read -s -n 1 #ожидание нажатия любой клавиши
sudo less /etc/passwd
echo "создание пользователя test1"
sudo useradd -d /home/nouser -G mail,users -u 1777 test1
read -s -n 1 #ожидание нажатия любой клавиши
#sudo usermod -u 1777 test1 #для промежуточных рез-в
echo "ИНФОРМАЦИЯ ОБ test1:"
sudo cat /etc/passwd | grep test1
read -s -n 1 #ожидание нажатия любой клавиши
echo "ПОЛЬЗОВАТЕЛЬ test1 СОСТОИТ В ГРУППЕ:"
sudo less /etc/group | grep test1
read -s -n 1 #ожидание нажатия любой клавиши
echo "Домашний каталог пользователя"
cd /home
pwd
ls -1
sudo usermod -u 1001 test1
echo "ИЗМЕНЕНИЕ UID НА 1001"
sudo cat /etc/passwd | grep test1
read -s -n 1 #ожидание нажатия любой клавиши
#sudo passwd -d test1 #удалил пароль
echo "ИНФО В /etc/shadow test1"
sudo less /etc/shadow | grep test1
read -s -n 1 #ожидание нажатия любой клавиши
echo "Установка пароля для test1"
sudo usermod -p MYpassword test1
echo "ИНФО В /etc/shadow"
sudo less /etc/shadow | grep test1
read -s -n 1 #ожидание нажатия любой клавиши
sudo useradd test3
echo "Создание test3, инфо в /etc/passwd"
sudo cat /etc/passwd | grep test3
read -s -n 1 #ожидание нажатия любой клавиши
sudo usermod -l test2 test3
echo "Изменение имени test3 на test2, инфо в /etc/group"
sudo less /etc/passwd | grep test2
sudo less /etc/shadow | grep test2
read -s -n 1 #ожидание нажатия любой клавиши
sudo userdel test2
echo "Удалил пользователя test3(2), инфо в /etc/passwd"
sudo less /etc/passwd | grep test2
sudo less /etc/shadow | grep test2
read -s -n 1 #ожидание нажатия любой клавиши
sudo chage -E 2019-05-29 test1 #дата устаревания пароля
echo "установил Устаревание пароля для пользователя test1, проверка"
sudo chage -l test1  #проверка устаревания пароля
read -s -n 1 #ожидание нажатия любой клавиши
sudo passwd -l test1 #блокировка пользователя
echo "блокировка пользователя test1"
sudo less /etc/shadow | grep test1
read -s -n 1 #ожидание нажатия любой клавиши
sudo groupadd -g 1010 xusers #создал группу с GID
echo "создание группы xusers c GID=1010, инфо в /etc/group"
sudo less /etc/group | grep xusers
read -s -n 1 #ожидание нажатия любой клавиши
sudo usermod -g xusers guest
echo "добавил пользователя guest в группу xusers"
sudo cat /etc/shadow | grep guest
sudo cat /etc/group | grep guest
sudo cat /etc/passwd | grep guest
read -s -n 1 #ожидание нажатия любой клавиши
sudo groupmod -n yusers xusers
echo "изменение именни группы с GID=1010 на имя yusers"
sudo less /etc/group | grep yusers
read -s -n 1 #ожидание нажатия любой клавиши
sudo usermod -g users guest #перекинул пользователя в другую группу
echo "ИНФОРМАЦИЯ ОБ guest, вышел из группы, перешёл в группу users:"
sudo cat /etc/shadow | grep guest
sudo cat /etc/group | grep guest
sudo cat /etc/passwd | grep guest
read -s -n 1 #ожидание нажатия любой клавиши
sudo groupdel yusers #удалене группы yusers
echo "информация об удалённой группе yusers"
sudo less /etc/group | grep yusers
read -s -n 1 #ожидание нажатия любой клавиши
sudo userdel test1
sudo groupdel test3 
echo "проверим осталась ли уч запись guest (должна остаться)"
echo "просмотр /etc/group"
read -s -n 1 #ожидание нажатия любой клавиши
sudo less /etc/group
echo "просмотр /etc/passwd"
read -s -n 1 #ожидание нажатия любой клавиши
sudo less /etc/passwd
echo "Просмотр /etc/shadow"
read -s -n 1 #ожидание нажатия любой клавиши
sudo less /etc/shadow