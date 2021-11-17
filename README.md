```
  _      _____   _____             _____  _____ _____  _____ _____ _______ _____ 
 | |    |  __ \ / ____|           / ____|/ ____|  __ \|_   _|  __ \__   __/ ____|
 | |    | |__) | |       ______  | (___ | |    | |__) | | | | |__) | | | | (___  
 | |    |  ___/| |      |______|  \___ \| |    |  _  /  | | |  ___/  | |  \___ \ 
 | |____| |    | |____            ____) | |____| | \ \ _| |_| |      | |  ____) |
 |______|_|     \_____|          |_____/ \_____|_|  \_\_____|_|      |_| |_____/   
 
```

# Contenido 
* [Practica 2 - PowerShell](Practica2)
* [Practica 3 - Bash](Pracitca3)
* [Practica 4 - Web scrapping](Practica4)
* [Practica 6 - Nmap](Practica6)
* [Practica 8 - Ejecutable](Practica8)


# Practica 2
<br> Script creado en un entorno de powershell que realiza escaneo de puertos de la subred de sus equipos activos en la red, uso:</br>
```
[>] SE EJECUTA EL SCRIPT EN POWERSHELL
[>] INGRESAMOS LA OPCION A ESCOGER / ESCANEO DE SUBRED / PUERTOS / EQUIPOS ACTIVOS
[>] OPCION 1 INGRESAMOS IP A HACER ESCANEO DE SUBRED, POSTERIORMENTE ARROJA RESULTADO DE ESCANEO
[>] OPCION 2 INTRODUCCIMOS IP A ESCANEAR PUERTOS, DESPLIEGA DE ESCANEOS COMUN / COMPLETO / RAPIDO
	- COMÚN ESCANEARA LOS PUERTOS COMUNES
	- COMPLETO ESCANEARA TODOS LOS PUERTOS EXISTENTES
	- RAPIDO ESCANEARA LOS PUERTOS MÁS COMUNES

[>] OPCION 3 SE INTRODUCCE IP A ESCANEAR LOS PUERTOS ACTIVOS EN LA RED
```
# Practica 3
<br>Script creado en bash que ejecuta un escaneo de equipos activos en la red y contiene un scanner de puertos abiertos y una opcion para extraer el sistema operativo, hostname y nombre de usuario del dispositivo en el que se este ejecutando, uso:</br>
```
[>] SE EJECUTA EL SCRIPT
[>] ESCOGEMOS UNA OPCION DEL MENU 1 - 4
[>] EL SCRIPT ACTUA POR SI SOLO Y ARROJA RESULTADOS A LA OPCION SELECCIONADA
```
# Practica 4
<br>Script creado en python que hace una extraccion de información de la sección `fake jobs` extrayendo la información de las clases `tittle`, `company` y `location`, los resultados son almacenados en un archivo `.csv`, uso: </br>
```
[>] SE EJECUTA EL SCRIPT EN UN IDLE O CUALQUIER PROGRAMA QUE PUEDA EJECUTAR UN ARCHIVO PYTHON
[>] EXTRAE LA INFORMACIÓN DESEADA
[>] SE GUARDA EN UN ARCHIVO .CSV
[>] FINALIZA EL SCRIPT
```
# Practica 6
<br>Script creado en python que nos ayudara a detectar los puertos abiertos con la libreria `nmap` de python, uso:</br>
```
[>] SE EJECUTA EL SCRIPT
[>] SE INTRUCCE LA IP A ESCANEAR
[>] ARROJA LOS PUERTOS ABIERTOS
[>] FINALIZA EL SCRIPT
```
# Practica 8
<br>Script creado en python el cual es un ejecutable de un reloj que nos muestra la hora en la que nos encontramos en el entorno donde se ejecute el script, para crear el ejecutable se necesita hacer lo siguiente:</br>
```
[>] CREAMOS EL EJECUTABLE EN LA CONSOLA SE EJECUTA pip install pyinstaller
[>] EJECUTAMOS pyinstaller --onefile nombredelscript.py
[>] SE CREAN LOS DIRECTORIOS Y LOS ARCHIVOS 
[>] ABRIMOS NUESTRO EJECUTABLE Y NOS ARROJA NUESTRO RELOJ
[>] FINALIZA SCRIPT
```
