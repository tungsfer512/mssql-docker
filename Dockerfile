FROM mcr.microsoft.com/mssql/server

ENV ACCEPT_EULA=Y
ENV MSSQL_SA_PASSWORD=password!@!123

USER root

RUN apt update -y
RUN apt upgrade -y
RUN apt install -y nano sudo openssh-server
RUN echo "root:root" | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
RUN service ssh start
RUN service ssh restart

EXPOSE 1433 22