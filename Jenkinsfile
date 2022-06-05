node {

    stage ('SCM Checkout') {
			git 'https://github.com/praveendevops18/DevOps_Project.git'
	}
	
    stage ('Mvn Package') {
			sh 'mvn clean package'
	}
	
    stage ('Testing the package') {
			sh 'mvn test'
	}	
	
    stage ('Deploy to tomcat') {
			deploy adapters: [tomcat8(credentialsId: 'tomcatDeployer', path: '', url: 'http://10.0.9.214:8080')], contextPath: 'sample', war: '**/*.war'
	}	

}
