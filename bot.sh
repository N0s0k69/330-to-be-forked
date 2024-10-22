id="979715547"
token="7243039707:AAHh4Y_9AFL7OOnN2nkz3xYRUxQsXYzwVL8"

mkdir -p upravlenie_students_17/{users,students,teacher}

echo 1.user
echo 2.student
echo 3.techer
read pac
if [ $pac = "1" ];
then
    if [ -e "upravlenie_students_17/users/user.txt" ];
    then
        echo " "
    else
        touch upravlenie_students_17/users/user.txt
        curl -s "https://api.telegram.org/bot$token/sendMessage?chat_id=$id&text=sozdanFail_user.txt"
    fi
    echo " "
    echo хотите поменять имя файла?
    echo y/n
    read im
    if [ $im = "y" ];
    then
        echo kakoe imy?
        read newIm
        mv upravlenie_students_17/users/user.txt upravlenie_students_17/users/$newIm.txt
        curl -s "https://api.telegram.org/bot$token/sendMessage?chat_id=$id&text=user.txt_pomenyl_imiy_na_$newIm"
        echo " "
        echo хотите удалить файл или папку?
        echo y/n
        read del
            if [ $del = "y" ]
            then
                echo укажите название
                read put
                rm -r upravlenie_students_17/users/$put.txt
                curl -s "https://api.telegram.org/bot$token/sendMessage?chat_id=$id&text=biludalien_$put" 
            else
            echo " "
            fi
        if [ $del = "y" ]
        then
            echo укажите название
            read put
            rm -r upravlenie_students_17/users/$put.txt
            curl -s "https://api.telegram.org/bot$token/sendMessage?chat_id=$id&text=biludalien_$put"
            
        fi
    fi  

    



elif [ $pac = "2" ];
then
    touch upravlenie_students_17/users/students.txt
    curl -s "https://api.telegram.org/bot$token/sendMessage?chat_id=$id&text=sozdanFail_students.txt"
    exit 0


elif [ $pac = "3" ];
then
    touch upravlenie_students_17/users/teaher.txt
    curl -s "https://api.telegram.org/bot$token/sendMessage?chat_id=$id&text=sozdanFail_teaher.txt"
    exit 0

fi

