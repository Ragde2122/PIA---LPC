#!/bin/bash 
# Autor : Edgar Francisco Mata Pérez
# Proposito : Script de practica 3
# Nombre del script : Practica 3

#HORA Y DIA
DIA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`

echo "Hoy es el $DIA y la hora actual es $HORA!"

# CREACIÓN DE MENÚ
echo " *** MENU ***"
Opcion1=" 1 . NET DISCOVER "
Opcion2=" 2 . ACTUAL USER "
Opcion3=" 3 . HOST NAME "
Opcion4=" 4 . EXIT "


#SELECT DE OPCIONES
select opcion in "$Opcion1" "$Opcion2" "$Opcion3" "$Opcion4" ;
do

# OPCION 4
    if [ "$opcion" = "$Opcion4"  ]; then
	 echo "Gracias por usar este script, te ha gustado? :)"
	 select opcion in "SI" "No";
	 do 
		if [ $opcionexit = "Si" ]; then
		echo "Gracias por tu opinion *-*"
		
		exit 
		else 
		echo "Hasta la proxima o jamas :)"
		exit
		fi 
	 done	
# OPCION 3
    elif [ "$opcion" = "$Opcion3" ]; then
	echo "Su usuario es:"$USER;
	echo "Su hostname es:"$HOSTNAME
	echo "Detectando sistema operativo..."
	OS="`uname`"
	case $OS in
  	  'Linux')
    	  OS='Linux'
    	  alias ls='ls --color=auto'
    	  ;;
  	  'FreeBSD')
    	  OS='FreeBSD'
    	  alias ls='ls -G'
    	  ;;
  	  'WindowsNT')
    	  OS='Windows'
    	  ;;
  	  'Darwin') 
    	  OS='Mac'
    	  ;;
  	  'SunOS')
    	  OS='Solaris'
    	  ;;
  	  'AIX') ;;
  	  *) ;;
	esac
	echo $OS


# OPCION 2

    elif [ "$opcion" = "$Opcion2" ]; then
	  direccion_ip=$1
	  puertos="20,21,22,23,50,80,110,119,135,137,138,143,162,389,443,445,636,1025,1443,3389,5985,5986,8080,10000"
          [ $# -eq 0 ] && { echo "Modo de uso: $0 <direccion ip>"; exit 1; }
          IFS =,
	  for port in $puertos
	  do
		  timeout 1 bash -c "echo > /dev/tcp/$direccion_ip/$port > /dev/null 2>&1" &&\
		  echo $direccion_ip":"$port" is open"\
		  ||\
		  echo $direccion_ip":"$port" is closed"
	  done
# OPCION 1
     elif [ "$opcion" = "$Opcion1" ]; then
    	   which ifconfig && { echo "Comando ifconfig existe...";
			       direccion_ip=`ifconfig |grep inet |grep -v "127.0.0.1" |awk '{ print $2}'`;
			       echo " Esta es tu direccion ip: "$direccion_ip;
			       subred=`ifconfig |grep inet |grep -v "127.0.0.1" |awk '{ print $2}'|awk -F. '{print $1"."$2"."$3"."}'`;
			       echo " Esta es tu subred: "$subred;
		       	      }\
		          || { echo " No existe el comando ifconfig...usandoip";
			       direccion_ip=` ip addr show |grep inet | grep -v "127.0.0.1" |awk'{ print$2}'`;
			       echo " Esta es tu direccion ip: "$direccion_ip;
			       subred= `ip addr show |grep inet | grep -v "127.0.0.1" |awk '{ print$2}' |awk -F. '{print $1"."$2"."$3"."}'`;
			       echo " Esta es tu subred: "$subred;
		         }
	   for ip in {1..254}
	   do
	       ping -q -c 4 ${subred}${ip} > /dev/null
	       if  [ $? -eq 0 ]	    
	       then
		   echo " Host responde: " ${subred}${ip}
	       fi
           done
fi
done

