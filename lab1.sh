#bash lab1.sh in terminal
#sudo pass 0000
echo "========================Вывод в один столбец"
ls -1
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши
echo "SODERZIMOE PODKATALOGOV"
ls -R
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши
echo "========================SKRITIE FAILI"
ls -a
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши
echo "========================TIPI FAILOV"
ls -F
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши
echo "========================O PRAVAH DOSTUPA"
ls -l
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши
echo "========================SORTIROVKA PO SUFIKSAM"
ls -X
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши
echo "========================СОРТИРОВКА ПО ВРЕМЕНИ"
ls -t
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши
echo "========================СОРТИРОВКА ПО РАЗМЕРУ"
ls -S
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши
echo "========================ТЕКУЩИЙ КАТАЛОГ"
pwd
mkdir -p ./DOROFEICHIK/LAB_4
cd DOROFEICHIK
cd LAB_4
pwd #оппеделение пути к текущему каталогу
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши
nano text1.txt
echo "Введите текст для файла text2.txt, для завершения ввода нажмите CTRL+D"
cat >> text2.txt
cat text1.txt text2.txt > text3.txt
echo "содержимое файла text3.txt"
cat < text3.txt
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши
cd ~debuser
less lab1.sh #постраничный вывод текста
pwd
cd ./DOROFEICHIK/LAB_4
#Создайте дополнительно текстовые файлы с именами text[4-15].txt
for i in {4..15}; do 
	echo ' hello text'$i'.txt' > text$i.txt;
done
mkdir plab_2
cd plab_2/
echo "============Текущий каталог"
pwd
echo "============СОДЕРЖИМОЕ КАТАЛОГА"
ls -1
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши
nano text4.txt
mv text4.txt text9.txt #переименовываем файлы
echo "содержимое файла text9"
cat text9.txt
echo "============Текущий каталог"
pwd
echo "============СОДЕРЖИМОЕ КАТАЛОГА"
ls -1
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши
cd ..
for i in {1..8}; do
	cp text$i.txt ./plab_2 #Скопирует file1 в каталог dir1. Каталог dir1 должен существовать
done
cd ./plab_2
echo "============Текущий каталог"
pwd
echo "============СОДЕРЖИМОЕ КАТАЛОГА"
ls -1
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши
for i in 1 2 3; do
	j=$(($i + 15))
	mv text$i.txt text$j.doc
done
for i in 4 5 6; do
        j=$(($i + 15))
        mv text$i.txt text$j.abc
done
for i in 7 8 9; do
        j=$(($i + 15))
        mv text$i.txt text$j.zed  #переименовать
done
echo "============Текущий каталог"
pwd
echo "============СОДЕРЖИМОЕ КАТАЛОГА"
ls -1
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши
for i in {16..24}; do
	mv text$i.* ..   #переместить
done
echo "============Текущий каталог"
pwd
echo "============СОДЕРЖИМОЕ КАТАЛОГА"
ls -1
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши
cd ..
echo "============Текущий каталог"
pwd
echo "============СОДЕРЖИМОЕ КАТАЛОГА"
ls -1
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши
date >> text1.txt && echo 'Dorofeichik Andrey Romanovich' >> text1.txt
cat < text1.txt
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши
echo "Введите пароль для архива"
zip -r -9 -e texts.zip *.*  #степень сжатия 9, использование скрытого пароля для архива
echo "============Текущий каталог"
pwd
echo "============СОДЕРЖИМОЕ КАТАЛОГА"
ls -1
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши
rm *.txt && rm *.abc && rm *.zed && rm *.doc  #удаление файлов
echo "============Текущий каталог"
pwd
echo "============СОДЕРЖИМОЕ КАТАЛОГА"
ls -1
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши
echo "Введите пароль для разархивации архива"
unzip texts.zip
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши
rmdir plab_2
cd ..
rm -r LAB_4
echo "============Текущий каталог"
pwd
echo "============СОДЕРЖИМОЕ КАТАЛОГА"
ls -1
echo "ожидание... для продолжения нажмите на любую клавишу!"
read -s -n 1 #ожидание нажатия любой клавиши

