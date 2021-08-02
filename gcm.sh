#!/bin/bash

#入力していない場合エラー
if [ ! $2 ] || [ ! $1 ]  ;
then
	echo "ERROR"
	exit 1
fi
a=$1
b=$2
#aよりbが大きいなら入れ替え
if [ $a -lt $b ] ;
then
	ch=$a
	a=$b
	b=$ch
fi
save=$(( $a % $b ))
while [ $save != 0 ]
do
	a=$b
	b=$save
	save=$(( $a % $b ))
done
echo "$b"
