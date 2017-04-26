FROM java:8

COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN mkdir toto
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
ENV FOO bar