FROM openjdk:8

LABEL maintainer="Neigbhorhoods.com <neighborhoods.engineering@neighborhoods.com.com>"

ARG SONAR_SCANNER_VER=3.2.0.1227
ENV SONAR_SCANNER_VER ${SONAR_SCANNER_VER}

WORKDIR /usr/src/app

RUN wget -O ./sonar.zip "https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONAR_SCANNER_VER}-linux.zip" \
    && unzip sonar.zip -d /usr/local/bin \
    && rm sonar.zip

ENV SONAR_RUNNER_HOME=/usr/local/bin/sonar-scanner-${SONAR_SCANNER_VER}-linux
ENV PATH $PATH:/usr/local/bin/sonar-scanner-${SONAR_SCANNER_VER}-linux/bin

ENTRYPOINT ["sonar-scanner", "-Dsonar.projectBaseDir=/usr/src/app", "-Dproject.settings=sonar-runner.properties"]