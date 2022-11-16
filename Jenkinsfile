pipeline
{
  agent any
  stages
  {
    stage('Build')
    {
      steps{
        echo 'Building...'
        	// acquiering an extra workspace seems to be necessary to prevent interaction between
        	// the parallel run nodes, although node() should already create an own workspace.
  
            	// debug info
            	//printJobParameter()
        
            	// checkout sources
	    checkout([$class: 'GitSCM',
	               branches: [[name: '*/main']],
		       doGenerateSubmoduleConfigurations: false,
		       extensions: [],
		       submoduleCfg: [],
		       userRemoteConfigs: [[credentialsId: 'myCredentials', url: 'https://github.com/AliFARESS/currentBuild.git']]]
            )
       
            // run cmake generate and build
            //runCommand( 'cmake -E remove_directory _build')                             // make sure the build is clean
            //runCommand( 'cmake -H. -B_build ' + params.AdditionalGenerateArguments )
            //runCommand( 'cmake --build _build ' + params.AdditionalBuildArguments )
	    
	    //cmakeBuild(installation: 'InSearchPath')
            
            echo '----- CMake project was build successfully -----'
      }
    }
  
  stage('Cmake')
    {
	    steps{
	    	echo 'cmake...'
		//script {
		   //bat "build.bat"
		       //}
		//cmakeBuild
      			//generator: 'Ninja',
      			//buildDir: 'build',
      			//sourceDir: 'source',
      			//installation: 'InSearchPath',
      			//steps: [
         			 //[args: 'all install', envVars: 'DESTDIR=${WORKSPACE}/artifacts']
      			       //]
		//cmake(-G -D"CMAKE_MAKE_PROGRAM:PATH=cmake/Toolchain/mingw32-make.exe" -DCMAKE_BUILD_TYPE=Debug -DCMAKE_ECLIPSE_GENERATE_SOURCE_PROJECT=TRUE -DCMAKE_ECLIPSE_MAKE_ARGUMENTS=-j8 ../src',
	  			installation: 'InSearchPath')
		    cmake -G -cmake/Toolchain/mingw32-make.exe -j8', installation: 'InSearchPath
	    }
    }
	stage('Test')
	{
	      steps
		  {
		echo 'Testing...'
	      }
	}
	stage('Deploy')
	{
      steps
	  {
        echo 'Deploying...'
      }
    }
  }
}
