#!/bin/bash

UserId=$(id -u)

if [ $UserId -ne 0 ];
then 
    echo "ERROR:: No root access connot to the root user"
fi


# sh function.sh mysql nginx python3
               $1     $2     $3

VALIDATE(){
    if [ $1 -eq 0 ];
    then 
        echo "Installing MySql......Success"
    else
        echo "Installing MySql......Failure"
        exit 1
    fi
}



# mysql installing
dnf list install mysql

if [ $? -ne 0 ];
then 
    echo "It is not installed.. going to install"

    dnf install mysql -y
    VALIDATE $? "MySql"
else
    echo "Mysql is already installed"
fi

#nginx
dnf list install nginx

if [ $? -ne 0 ];
then 
    echo "It is not installed.. going to install"

    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo "nginx is already installed"
fi

dnf list install python3

if [ $? -ne 0 ];
then 
    echo "It is not installed.. going to install"

    dnf install python3 -y
    VALIDATE $? "pyhton3"
else
    echo "python3 is already installed"
fi

# dnf install mysql -y

# if [ $? -eq 0 ];
# then 
#     echo "Installing MySql......Success"
# else
#     echo "Installing MySql......Failure"
#     exit 1
# fi