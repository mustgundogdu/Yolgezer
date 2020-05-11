#!/usr/bin/bash


#SPEED AND EASY OSINT ACCESS

target=$1

whois_enum(){
echo $target

whois $target



}


#ns and mx records with dig tool

ns_record(){
	

dig $target ns | grep $target


}

mx_record(){


dig $target mx | grep $target

}




echo " #Please Select Selection# "
echo "Whois query (1)"
echo "Ns Records  (2)"
echo "MX Records  (3)"

read select

if [ $select -eq 1 ];
then

	whois_enum 

fi
if [ $select -eq 2 ];
then
	ns_record

fi
if [ $select -eq 3 ];
then

	mx_record
fi

