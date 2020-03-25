# Aguardo o SQL ficar disponivel
sleep 90s

# executo o script para criaçao do database e demais funçoes
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P TOTVS@protheus1234 -d master -i setup.sql