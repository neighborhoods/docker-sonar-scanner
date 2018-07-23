# neighborhoods/docker-sonar-scanner

A Docker image to run the SonarQube Scanner.

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