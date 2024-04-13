pipeline{
    agent any
    stages{
        stage ('Build'){
            steps{
                echo "Etapa Build no disponible";
            }
        }
        stage ('Test'){
            steps{
            echo "Etapa Build no disponible";
            }
        }
        stage ('Deploy'){
            steps{
                echo "Etapa deploid Iniciando";
                sh "docker stop mi_primer_despliegue"
                sh "docker rm mi_primer_despliegue"
                sh "docker build -t mi_primer_despliegue ."
                sh "docker run  --name mi_primer_despliegue -d -p 3001:80 mi_primer_despliegue "
            }
        }        
    }
}