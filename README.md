# BlazeDemo Performance Test

## Visão Geral
Este repositório contém o plano de testes de desempenho para o aplicativo BlazeDemo, utilizando o Apache JMeter. O objetivo é avaliar a capacidade do sistema em lidar com diferentes níveis de carga e garantir que o desempenho atenda aos requisitos estabelecidos.

## Instruções para Execução do Script
Para executar os testes, siga os passos abaixo:

1. **Instale o Apache JMeter**:
   - Baixe e instale a versão mais recente do Apache JMeter a partir do [site oficial](https://jmeter.apache.org/download_jmeter.cgi).

2. **Carregue o Test Plan**:
   - Abra o JMeter.
   - Vá para `File` → `Open` e selecione o arquivo `BlazeDemoLoadandPeakTestPlan.jmx`.

3. **Execute o Test Plan**:
   - Clique no botão de "Start" para iniciar a execução dos testes.
   - Monitore o desempenho durante a execução no painel de resultados.

## Relatório de Execução dos Testes

### Load Test - 250 Users
- **Média de Tempo de Resposta**: **1286 ms**
- **Percentil 90**: **3434 ms**
- **Vazão**: **1,000.7 requisições/minuto**
- **Taxa de Erros**: **0%**
- **Teste realizado em**: **[data e hora]**

### Peak Test - 500 Users
- **Média de Tempo de Resposta**: **5810 ms**
- **Percentil 90**: **9419 ms**
- **Vazão**: **1,400.6 requisições/minuto**
- **Taxa de Erros**: **0%**
- **Teste realizado em**: **[data e hora]**

### Gráficos e Visualizações
Os gráficos e resultados detalhados podem ser encontrados na pasta `report`, gerados automaticamente pelo JMeter após a execução dos testes.

## Considerações Finais
- **Critério de Aceitação**: O critério de aceitação foi definido como um tempo de resposta no percentil 90 inferior a **2000 ms**. Os resultados do Load Test atenderam a este critério, enquanto o Peak Test não atendeu, indicando a necessidade de otimizações adicionais.
  
- **Recomendações**: Sugerimos a análise de desempenho do backend e a otimização das consultas ao banco de dados para melhorar a capacidade de resposta sob carga elevada.

## Dockerização
Foi realizado o processo de dockerização para facilitar a execução do JMeter em um ambiente controlado e reprodutível. O `Dockerfile` está incluído no repositório e permite a execução dos testes em um contêiner Docker, garantindo que todas as dependências estejam corretamente configuradas.

### Executando com Docker
1. Certifique-se de ter o Docker Desktop instalado e em execução.
2. Navegue até o diretório onde o repositório está localizado.
3. Execute o seguinte comando para construir a imagem Docker:
   ```bash
   docker build -t meu-teste-jmeter .
