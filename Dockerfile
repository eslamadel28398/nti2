FROM ubuntu

RUN apt update && apt install ssh -y && apt install sudo -y

RUN adduser ansible

RUN usermod -aG sudo ansible

RUN echo "ansible:123" | chpasswd

ENTRYPOINT service ssh start && bash

