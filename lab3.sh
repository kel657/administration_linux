#bash lab1.sh in terminal
echo "cценарий оболочки с именем gchmod, который позволяет искать в заданной директории файлы с заданными правами и менять эти права на другие "
my_directory=/home/debuser
rightsTosearch=555
targetRights=777
cd $my_directory
mkdir ./DOROFEICHIK
cd DOROFEICHIK/
echo "текущий каталог"
pwd
for i in {1..10}; do 
	echo ' hello text'$i'.txt' > text$i.txt;
	chmod 777 text$i.txt
	
done
for i in {5..10}; do 
	chmod 555 text$i.txt
	
done
echo "содержимое каталога с правами доступа ДО изменения прав"
ls -l -X
echo "файлы с правами для поиска = $rightsTosearch"
find /home/debuser/DOROFEICHIK -type f -perm $rightsTosearch -print
find /home/debuser/DOROFEICHIK -type f -perm $rightsTosearch -exec chmod $targetRights {} \;
echo "содержимое каталога с правами доступа ПОСЛЕ изменения прав"
ls -l -X
cd ..
sudo rm -r DOROFEICHIK