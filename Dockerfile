FROM justb4/jmeter:5.5

# Copiar o arquivo de teste para o container
COPY BlazeDemoLoadandPeakTestPlan.jmx /tests/

# Definir o diretório de trabalho
WORKDIR /tests

# Comando para rodar o JMeter com o plano de teste
ENTRYPOINT ["jmeter", "-n", "-t", "BlazeDemoLoadandPeakTestPlan.jmx", "-l", "resultados.jtl", "-e", "-o", "report"]
