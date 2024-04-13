#!/bin/bash

# Nombre del contenedor
CONTAINER_NAME="mi_primer_despliegue"

# Verificar si el contenedor ya está en ejecución
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Deteniendo el contenedor $CONTAINER_NAME..."
    docker stop $CONTAINER_NAME
    echo "El contenedor $CONTAINER_NAME ha sido detenido."
fi

# Verificar si el contenedor existe pero está detenido
if [ "$(docker ps -aq -f status=exited -f name=$CONTAINER_NAME)" ]; then
    # Eliminar el contenedor detenido
    echo "Eliminando el contenedor detenido $CONTAINER_NAME..."
    docker rm $CONTAINER_NAME
    echo "El contenedor detenido $CONTAINER_NAME ha sido eliminado."
fi

#crear contenedor
echo "creando contenedor desde 0"
docker build -t $CONTAINER_NAME .


# Crear y ejecutar el nuevo contenedor
echo "Iniciando el nuevo contenedor $CONTAINER_NAME..."
docker run  --name $CONTAINER_NAME -d -p 3001:80 $CONTAINER_NAME
echo "El nuevo contenedor $CONTAINER_NAME ha sido iniciado correctamente."
