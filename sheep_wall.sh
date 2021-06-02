#/bin/bash

logo()
{
echo "____  ___.__                 _____  .__    _________.__                            __      __        .__  .__  " 
echo "\   \/  /|__|____    ____   /     \ |__|  /   _____/|  |__   ____   ____ ______   /  \    /  \_____  |  | |  | " 
echo " \     / |  \__  \  /  _ \ /  \ /  \|  |  \_____  \ |  |  \_/ __ \_/ __ \\____ \  \   \/\/   /\__  \ |  | |  |  "
echo " /     \ |  |/ __ \(  <_> )    Y    \  |  /        \|   Y  \  ___/\  ___/|  |_> >  \        /  / __ \|  |_|  |__"
echo "/___/\  \|__(____  /\____/\____|__  /__| /_______  /|___|  /\___  >\___  >   __/    \__/\  /  (____  /____/____/"
echo "      \_/        \/               \/             \/      \/     \/     \/|__|            \/        \/           "

}

scanf()
{
	echo [+] kali is scaning victims...
	echo -e "\n* * * * * * * * * * * * * * * * * * * *"
	for file in `ls ../Desktop/*.txt`
	do
	#echo $file
	cat $file
	echo -e "\n* * * * * * * * * * * * * * * * * * * *"
	done	
}

delete()
{
	file_num=`ls ../Desktop/*.txt | wc -l`
	num=5 
	#echo $file_num
	if [ $file_num -gt $num ];then 
		#echo "file_num > 5"
		num=0
		for file in `ls ../Desktop/*.txt`
		do
			((num=num+1))
			if [ $num -eq 3 ];then 
				rm $file
				#echo $file
			#else
			#	a=1
			fi
		done	
	#else 
		#echo "file_num < 5"
	#	a=1
	fi
}

while true
do
clear
logo
scanf
delete
sleep 5s
done
