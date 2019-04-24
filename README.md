# Tarea-HTCondor
Tarea para el curso de plataformas a gran escala. 

## Integrantes:
    - Alexandra lopez
    - Alejandro orobio

## Descripción:
  Se muestra un ejemplo de la ejecución de una tarea en HTCondor. 
    
## Ejecución:
Descargar el   archivo 'R-3.5.3' en el siguiente enlace y añadirlo al directorio de los archivos descargados. 
        
  https://drive.google.com/file/d/1ul2H4sDtGuv-AmqoUrPj71StRcYOuITZ/view?usp=sharing

Ejecutar las siguientes líneas de código (cambiar la ruta de la carpeta en 'source=...'):

    docker run -d --rm --mount type=bind,source=/Users/alexandralopezobando/Desktop/Tarea-HTCondor,target=/home/alexa -w /home/alexa -h htcondor --name htcondor andypohl/htcondor
    docker exec -it -u 1000:1000 htcondor bash

Y dentro del contenedor ejecutar:
    
    condor_submit testR.condor

