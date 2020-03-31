# imagem de origem
FROM mcr.microsoft.com/mssql/server:2019-latest
# quem mantem o projeto
LABEL MAINTAINER="Rodrigo dos Santos - ROANA DevOps"
# tag com a versao e descriçao
LABEL version="1.0" description="SQL Server 2019 para uso com plataforma TOTVS (TOTVS12,Fluig, etc...)"
# porta que deve ficar exposta
EXPOSE 1433
# variaveis usada pela imagem
# desativa a politica de senhas... nao recomendo seu uso
#ENV CHECK_POLICY=OFF
# aceite de contrato
ENV ACCEPT_EULA=Y
# senha do usuario sa ( root ) do SQL
ENV MSSQL_SA_PASSWORD=TOTVS@protheus1234
# tipo de produto
ENV MSSQL_PID=Developer
# linguagem do produto
#ENV MSSQL_LCID
# agrupamento dos dados
#ENV MSSQL_COLLATION
# limite de memoria
# ENV MSSQL_MEMORY_LIMIT_MB
# porta
ENV MSSQL_TCP_PORT=1433
# ip
# ENV MSSQL_IP_ADDRESS
# define o diretorio padrao de backup
# ENV MSSQL_BACKUP_DIR
# altera o diretorio padrao de database
# ENV MSSQL_DATA_DIR
# altera o diretorio padrao de log
# ENV MSSQL_LOG_DIR
# altera o diretorio dump de memoria
# ENV MSSQL_DUMP_DIR
# a variavel abaixo precisa de um melhor entendimento
# ENV MSSQL_ENABLE_HADR
# habilita o agent SQL
# ENV MSSQL_AGENT_ENABLED
# define o local para o database MASTER
# ENV MSSQL_MASTER_DATA_FILE
# define o local para o log do database MASTER
# ENV MSSQL_MASTER_LOG_FILE
# define o local para errorlog
# ENV MSSQL_ERROR_LOG_FILE
# copia o arquivo de configuraçao para o diretorio no container
COPY ./setup.sql /setup_scripts/setup.sql
# primeiro o SQL Server é iniciado
# depois aguardamos a frase “Service Broker manager has started”, indicando que o servidor está pronto
# o próximo passo é rodar um comando que executa tudo que está no script de setup
# por último, matamos o processo do SQL Server
RUN ( /opt/mssql/bin/sqlservr --accept-eula & ) | grep -q "Service Broker manager has started" \
    && /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P ${MSSQL_SA_PASSWORD} -i /setup_scripts/setup.sql \
    && pkill sqlservr
# inicializaçao do SQL Server
CMD ["/opt/mssql/bin/sqlservr"]