## Descrição

Tarefa passada na aula do dia 28/02/2025

# Atividade


> [!question] Tarefa 16
> Determine a transformada de Laplace do sinal $e^{-\alpha t}cos(w \cdot t)u(t)$
> 
> ![[20250228_123430.jpg]]

## Resposta

Montando a Integral da Transformada de Laplace de $x(t) = e^{-at}cos(w \cdot t)u(t)$ temos:

![[Pasted image 20250307005110.png]]

Simplificamos os expoentes da exponencial para obter um único termo. A partir disso, solucionamos a integral utilizando a regra de Integração por Partes.

Quando montamos a solução, acabamos obtendo na parte da integral $\int v \cdot du$ a integral que forma a Transformada de Laplace de $x(t) = e^{-at}sen(w \cdot t)u(t)$, podemos então substituir pela sua expressão na tabela das transformadas.

![[Pasted image 20250307001050.png]]

Resolvendo a solução com os limites de integração, temos que para $t \to \infty$, toda a expressão some e se torna $0$.

![[Pasted image 20250307001058.png]]

Como o termo crítico para a convergência da integral é $e^{-(s+a)t}$, temos que a Região de Convergência é dada por: 

![[Pasted image 20250307002538.png]]