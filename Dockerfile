FROM ruby:2.7.1

RUN apt-get update && apt-get install
RUN apt install default-jre
RUN apt install default-jdk
RUN wget https://github.com/riemann/riemann/releases/download/0.3.5/riemann-0.3.5.tar.bz2
RUN tar xvfj riemann-0.3.5.tar.bz2
WORKDIR /riemann-0.3.5
RUN gem install riemann-client riemann-tools riemann-dash
