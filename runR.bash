#!/bin/bash

# Extraer instalación portable de R:
d=$(date +'%G/%m/%d %H:%M:%S')
h=$(hostname -f)
echo "${d} Inicia extracción R-3.5.3.tar en ${h}"
tar -xvf R-3.5.3.tar
d=$(date +'%G/%m/%d %H:%M:%S')
echo "${d} Finaliza extracción R-3.5.3.tar en ${h}"

# Configuramos las rutas a la instalación portable de R 
# para que el script pueda acceder al ejecutable de R
export PATH=$(pwd)/R/bin:$PATH
export RHOME=$(pwd)/R
echo "${d} Configurada la ruta a instalación portable de R"

# Ejecutar R con el script ingresado:
d=$(date +'%G/%m/%d %H:%M:%S')
echo "${d} Inicia ejecución R con entrada $1"
Rscript $1
d=$(date +'%G/%m/%d %H:%M:%S')
echo "${d} Finaliza ejecución R con entrada $1"
