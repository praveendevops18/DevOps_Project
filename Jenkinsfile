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
			deploy adapters: [tomcat8(credentialsId: 'tomcatdeploy', path: '', url: 'http://13.233.237.0:8080')], contextPath: 'samplepage', war: '**/*.war'
	}	

}
