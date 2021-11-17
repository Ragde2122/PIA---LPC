# Importamos de modulos
import requests
from bs4 import BeautifulSoup
#Se importo modulo csv
import csv

# Obtenemos los datos mediante petición GET
URL = "https://realpython.github.io/fake-jobs/"
page = requests.get(URL)
# Analizamos el contenido HTML con BeautifulSoup
soup = BeautifulSoup(page.content, "html.parser")
results = soup.find(id="ResultsContainer")
# Buscar todos los elementos que el class "card-content"
job_elements = results.find_all("div", class_="card-content")
# Buscar todps los elementos que el h2 contenga en su texto
# la palabra "python"
python_jobs = results.find_all(
	"h2", string=lambda text: "python" in text.lower()
    )
# Buscar cada elemento que tengan referencia de python_jobs
# Y almacenarlo en python_jobs_elements
python_jobs_elements = [
    h2_element.parent.parent.parent for h2_element in python_jobs
    ]

# Declaracion lista vacia
jobsList = []

# Mostramos información de python_jobs_elements     
for job_element in python_jobs_elements:	
    title_element = job_element.find("h2", class_="title")
    company_element = job_element.find("h3", class_="company")
    location_element = job_element.find("p", class_="location")
	# De la lista de elementos de la etiqueta "a" buscamos
	# el primer elemento que incluya href.
    link_url = job_element.find_all("a")[1]["href"]

    # Guardar en la lista jobsList cada trabajo encontrado dentro de una lista que contiene 
    # 
    jobsList.append([company_element.text.strip(),title_element.text.strip(),location_element.text.strip(), link_url.strip()])

    print(company_element.text.strip())
    print(location_element.text.strip())
    print(title_element.text.strip())
	# Imprimimos la salida con link_url 
    print(f"Apply Here: {link_url}\n")
    print()


print ("Guardando en un archivo csv...")

# Guardar en un archivo CSV en el directorio actual
# Abrir el archivo con Excel / LibreOffice, etc.
with open('./practica4.csv', 'w') as csv_file:
    writer = csv.writer(csv_file, dialect='excel')

    # Declaracion de columnas 
    fieldnames = ['Compañia', 'Empleo', 'Ubicacion', 'Link']
    
    # Escritura de columnas y filas donde el valor la fila escrita corresponde a el nombre de la columna
    writer.writerow(fieldnames)
    writer.writerows(jobsList)
    

print ("Citas guardas con exito :))")