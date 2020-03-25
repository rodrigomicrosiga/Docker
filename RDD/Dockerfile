# imagem de origem
FROM ubuntu:16.04
# quem mantem o projeto
LABEL MAINTAINE="Rodrigo dos Santos - ROANA DevOps"
# tag com a versao e descriçao
LABEL version="1.0" description="Ubuntu 16.04 com SQL TOOLS, ODBC e TOTVS DBACCESS"
# apt-get e utilitarios de sistema
#RUN apt-get update 
#RUN apt-get install -y 
#RUN	curl apt-transport-https debconf-utils 
#RUN rm -rf /var/lib/apt/lists/*
# adiçao de repositorio microsoft
#RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
#RUN curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
# instalaçao de drivers SQL Server e ferramentas
#RUN apt-get update
#RUN ACCEPT_EULA=Y apt-get install -y msodbcsql17 mssql-tools
#RUN echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
#RUN /bin/bash -c "source ~/.bashrc"
# cópia da estrutura do DBACCESS
#ADD 20-02-21-DBACCESS_LINUX_X64_BUILD-20191119.TAR.GZ /dbaccess
# cópia do diretorio build
#COPY /build /build/
# execuçao do script
#RUN /build/setup.sh
# exposiçao da porta
#EXPOSE 7800
# definiçao da "area de trabalho"
#WORKDIR /dbaccess/multi
# inicializaçao do DBACCESS
CMD /bin/bash
# CMD [ "/usr/local/bin/my-init.sh", "dbaccess" ]