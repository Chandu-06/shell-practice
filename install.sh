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

# dnf install mysql -y

# if [ $? -eq 0 ];
# then 
#     echo "Installing MySql......Success"
# else
#     echo "Installing MySql......Failure"
#     exit 1
# fi