#docker
docker build -t mi_primer_despliegue .
docker run -d -p 3001:80 mi_primer_despliegue