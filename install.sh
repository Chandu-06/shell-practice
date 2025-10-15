#!/bin/bash

UserId=$(id -u)

if [ $UserId -ne 0 ];
then 
    echo "ERROR:: No root access connot to the root user"
fi

dnf list install mysql

if [ $? -ne 0 ];
then 
    echo "It is not installed.. going to install"

    dnf install mysql -y
    if [ $? -eq 0 ];
    then 
        echo "Installing MySql......Success"
    else
        echo "Installing MySql......Failure"
        exit 1
    fi
else
    echo "Mysql is already installed"
fi

dnf list install nginx

if [ $? -ne 0 ];
then 
    echo "It is not installed.. going to install"

    dnf install nginx -y
    if [ $? -eq 0 ];
    then 
        echo "Installing nginx......Success"
    else
        echo "Installing nginx......Failure"
        exit 1
    fi
else
    echo "nginx is already installed"
fi

dnf list install python3

if [ $? -ne 0 ];
then 
    echo "It is not installed.. going to install"

    dnf install python3 -y
    if [ $? -eq 0 ];
    then 
        echo "Installing python3......Success"
    else
        echo "Installing python3......Failure"
        exit 1
    fi
else
    echo "python3 is already installed"
fi

dnf list install apache2

if [ $? -ne 0 ];
then 
    echo "It is not installed.. going to install"

    dnf install apache2 -y
    if [ $? -eq 0 ];
    then 
        echo "Installing apache2......Success"
    else
        echo "Installing apache2......Failure"
        exit 1
    fi
else
    echo "apache2 is already installed"
fi
# dnf install mysql -y

# if [ $? -eq 0 ];
# then 
#     echo "Installing MySql......Success"
# else
#     echo "Installing MySql......Failure"
#     exit 1
# fi