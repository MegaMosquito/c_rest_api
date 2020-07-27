FROM ubuntu:latest
RUN apt update && apt install -y build-essential
WORKDIR /
COPY c_rest_api.c /
RUN gcc c_rest_api.c -o /restserver
CMD /restserver
