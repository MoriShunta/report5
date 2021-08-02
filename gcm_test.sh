#!/bin/bash

result=$(./gcm.sh 10 2)
#数字二つ打った際、ERRORが返されなかれば正常
if [ $result = "ERROR" ] ;
then
	echo "ERROR"
	exit 1
fi
result=$(./gcm.sh 1)
result2=$(./gcm.sh)
#数字を何も打たなかった場合、一つだけ打った場合ERRORを返せば正常
if [ $result != "ERROR" ] || [ $result2 != "ERROR" ] ;
then
        echo "ERROR"
        exit 1
fi
echo "正常動作"
exit 0
