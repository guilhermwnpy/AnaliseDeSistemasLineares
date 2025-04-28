## Descrição

Atividade passada na aula do dia 29/11/2024

# Atividade

> [!question] Enunciado
> Usem os sinais elementares e o sistema de elementar descrito, para construir os sinais.
>```mermaid
>graph LR
>    A["x(t)"] --> B["Sistema"] --> C["x(at)"]
>```
> 
> ![[20241129_123400.jpg]]

## Resposta 1:

Considerando o sinal elementar $s(t)$, que determina uma função seno, operando sobre o produto da frequência angular e o tempo, temos $s(t) = sen(\omega \cdot t)$. Onde a frequência angular é expressa como a divisão entre $2\pi$ pelo período $T$, temos $\frac{2 \cdot \pi}{T}$. Portanto, a função elementar é dada por: $sen(\frac{2 \cdot \pi }{T} \cdot t)$.

Portanto conseguimos desenvolver um sinal seno com período de 3, determinando o parâmetro $T$ da fórmula como $T=3$. Sendo assim, esse sinal senoidal, gerado ao longo do tempo terá período 3.

## Resposta 2:

O sinal elementar $e(t)$ é determinado pela forma da função elementar exponencial, na forma base $e(t) = A \cdot e^{a\cdot t}$. A partir desse sinal, é preciso determinar quais valores conseguem satisfazer as condições.

$$x(0)=1, \quad x(3)=\frac{1}{2}$$

A primeira condição temos um tempo igual a $0$, e a resposta do sinal é $1$, portanto podemos usando a forma geral do sinal, $e(0) = 1 = A \cdot e^{- \alpha \cdot 0}$, a exponencial se torna $1$, tendo assim $1 = A \cdot 1$, a amplitude será $1$, e a equação final para essa condição será $e(t) = e^{- \alpha \cdot t}$. O $\alpha$ ser negativo, faz o sinal ser uma exponencial decrescente.

A segunda condição diz que temos um tempo igual a $3$, e a resposta do sinal é $\frac{1}{2}$, portanto podemos usando o sinal base encontrado anteriormente, $\frac{1}{2}=e^{- \alpha \cdot 3}$. Usando as propriedades dos exponenciais, e aplicando logaritmo em ambos os lados temos $ln\left(\frac{1}{2}\right)= -3 \cdot \alpha$. Temos que $ln\left(\frac{1}{2}\right)= -ln(2)$, temos $-ln(2) = -3 \cdot \alpha$. Pode-se simplificar a equação por $-3$, $\alpha = \frac{ln(2)}{3}$. Substituindo $\alpha$ na equação original teremos $e(t) = e^{- \frac{ln(2)}{3} \cdot t}$. Finalmente, pelas propriedades da exponencial, podemos escrever a função final com: $e(t) = 2^{\frac{t}{3}}$.