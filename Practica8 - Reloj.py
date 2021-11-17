# Importamos el módulo Tkinter 
from tkinter import * 
from tkinter.ttk import *
  

from time import strftime 
  

root = Tk() 
 
 
root.title('EdgarRelojLPC') 
 
#Quitar icono
#root.iconbitmap(r"C:/Users/PC01\Documents/Tarea8_1870089/2248815")
  

def hora(): 
    

    datos = strftime('%I:%M:%S %p') 
    
  
    label.config(text = datos) 
 
 
    label.after(1000, hora) 
   
label = Label(root, 
	font = (
		'Verdana', 80
	), 
	padding = '50',
    background = 'white', 
    foreground = 'green' 
) 
   
label.pack(expand = True) 
 
hora() 
 
mainloop()
