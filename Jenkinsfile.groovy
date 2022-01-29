// Testing out some pipeline stuff

pipeline{
	
	//git checkout
	stage('git checkout'){
	
		steps{
		sh "echo hello"
		}	
}
	stage('another one'){
		steps{
			sh "echo 'another one'"
		}
	}
}
