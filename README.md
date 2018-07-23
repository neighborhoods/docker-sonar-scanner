# neighborhoods/docker-sonar-scanner

A Docker image to run the SonarQube Scanner. For full documentation regarding the SonarQube scanner, please see the [SonarQube documentation](https://docs.sonarqube.org/display/SONAR/Analyzing+Source+Code).

To run this, make sure your have a sonar-runner.properties file in your code base and then:

```
cd /local/path/to/your/code
docker run -it -v $(pwd):/usr/src/app neighborhoods/sonar-scanner
```

If your SonarQube instance requires authentication, you may provide it as follows:

```
docker run -it -v $(pwd):/usr/src/app neighborhoods/sonar-scanner -Dsonar.login=username -Dsonar.password=password
```

You may also append other Sonar Runner arguments as needed.

For a full list of available Scanner parameters, see the official Sonar documentation here:
https://docs.sonarqube.org/display/SONAR/Analysis+Parameters