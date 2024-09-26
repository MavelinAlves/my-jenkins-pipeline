pipeline {
    agent any

    environment {
        APP_NAME = 'mi-aplicacion'
        DEPLOY_ENV = 'produccion'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Clonando el repositorio...'
                git 'https://github.com/usuario/mi-repo.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Construyendo la aplicación...'
                sh 'make build'  // Reemplaza con tu comando de build
            }
        }

        stage('Test') {
            steps {
                echo 'Ejecutando pruebas...'
                sh 'make test'  // Reemplaza con tu comando de prueba
            }
        }

        stage('Package') {
            steps {
                echo 'Empaquetando la aplicación...'
                sh 'make package'  // Reemplaza con tu comando de empaquetado
            }
        }

        stage('Deploy') {
            steps {
                echo "Desplegando en ${DEPLOY_ENV}..."
                sh "deploy.sh ${APP_NAME} ${DEPLOY_ENV}"  // Reemplaza con tu script de despliegue
            }
        }
    }

    post {
        success {
            echo '¡Pipeline completado exitosamente!'
        }
        failure {
            echo 'El pipeline falló.'
        }
        always {
            echo 'Limpiando...'
            cleanWs()  // Limpia el espacio de trabajo
        }
    }
}
