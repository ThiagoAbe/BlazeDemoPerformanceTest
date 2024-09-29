# BlazeDemoPerformanceTest
Instruções para Execução do Script:
## Instruções para Execução do Script
1. Abra o JMeter.
2. Carregue o Test Plan `BlazeDemo Performance Test`.
3. Execute o Test Plan.
Relatório de Execução dos Testes:
## Relatório de Execução dos Testes
- **Load Test - 250 Users**
  - Média de Tempo de Resposta: 1286 ms
  - Percentil 90: 3434 ms
  - Vazão: 1,000.7 requisições/minuto
- **Peak Test - 500 Users**
  - Média de Tempo de Resposta: 5810 ms
  - Percentil 90: 9419 ms
  - Vazão: 1,400.6 requisições/minuto
Considerações Finais:
## Considerações Finais
O critério de aceitação não foi satisfeito, pois o tempo de resposta no percentil 90 excedeu 2000 ms. O desempenho do sistema deve ser investigado e otimizado.
