read -p "nazvanie " naz
mkdir $naz
touch $naz/ocenki.txt
read -p "kolihestvo studentov " kol
for ((i=1; i <= $kol; i++));
do
    read -p "studenti" im 
    echo -e "$im " >> $naz/ocenki.txt
done
