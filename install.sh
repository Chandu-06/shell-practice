#!/bin/bash

UserId=$(id -u)

if [ $UserId -ne 0 ];
then 
    echo "ERROR:: No root access connot to the root user"
fi