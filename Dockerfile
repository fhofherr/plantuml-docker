FROM alpine:3.10.2

ENV PLANTUML_VERSION=1.2019.11
ENV LANG en_US.UTF-8

RUN apk add --update --no-cache openjdk8 graphviz wget ca-certificates fontconfig ttf-dejavu \
    && addgroup -S plantuml \
    && adduser -D -h /home/plantuml -s /bin/false plantuml -G plantuml \
    && wget "https://sourceforge.net/projects/plantuml/files/${PLANTUML_VERSION}/plantuml.${PLANTUML_VERSION}-mit.jar" -O /home/plantuml/plantuml.jar \
    && chown plantuml:plantuml /home/plantuml/plantuml.jar
WORKDIR /home/plantuml
USER plantuml
ENTRYPOINT ["java", "-Djava.awt.headless=true", "-jar", "/home/plantuml/plantuml.jar"]
