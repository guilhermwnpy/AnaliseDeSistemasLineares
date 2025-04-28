## Descrição

Atividade passada na aula do dia 15/01/2025

# Atividade

>[!question] Enunciado
>Encontrar as seguintes convoluções
>
>>a) 
>>$x(t) = \delta(t)-0.1\delta(t-1)$ 
>>$h(t) = u(t) - u(t-0.5)$
>
>>b) 
>>$x(t) = u(t) - u(t-1)$
>>$h(t) = u(t) - u(t-0.5)$
> 
> ![[WhatsApp Image 2025-01-15 at 12.29.34.jpeg|400]]

## Resposta

### 1º Convolução

Essa convolução é a combinação de dois sinais, onde o sinal $x(t)$ é composto por dois impulsos, caracterizando-o como um trem de impulsos, onde temos:
- $\delta(t) \to$ Um impulso unitário no tempo $t=0$
- $-0.1\delta(t-1) \to$ Um impulso de amplitude $-0.1$ localizado em $t=1$

![[Pasted image 20250127221800.png]]

Sendo o sinal $x(t)$ convolvido com a resposta ao impulso dado por uma "função janela" $h(t)$. Esse sinal representa uma janela de ativação iniciada em $t=0$ e desativada em $t=0.5$.

A função $h(t)$ representa um **pulso** de largura $0.5$ que é iniciado quando tempo $t=0$ e é finalizado quando o tempo $t=0.5$, sendo zero em outros intervalos de tempo, geralmente usada para modelar um comportamento que ocorre entre esses dois instantes.

![[Pasted image 20250127221717.png]]

Para determinar a convolução $y(t) = x(t) \ast h(t)$, usaremos de suas propriedades.

A convolução é definida como:

$$y(t) = \int_{-\infty}^{\infty} x(\tau) \cdot h(t-\tau)d\tau$$

Onde temos os dois sinais que serão convolvidos:

$$x(t) = \delta(t)-0.1\delta(t-1)$$
$$h(t) = u(t) - u(t-0.5)$$


E sabemos, que o impulso é a identidade da convolução, portanto a convolução de um sinal com um impulso, retorna o próprio sinal, e a convolução de um sinal com **um *impulso* deslocado no tempo**, retorna **o *sinal* deslocado no tempo**.
1. $\delta(t) \ast h(t) = h(t)$
2. $\delta(t-T) \ast h(t) = h(t-T)$

Portanto podemos separar os termos dos sinais, e utilizando a propriedade distributiva da convolução, podemos realizar as operações individualmente:

$$y(t) = [\delta(t) - 0.1\delta(t-1)] \ast [u(t) - u(t-0.5)]$$

Distribuindo temos:
1. $\delta(t) \ast [u(t) - u(t-0.5)]$
2. $-0.1\delta(t-1) \ast [u(t) - u(t-0.5)]$

$$y(t) = \delta(t) \ast [u(t) - u(t-0.5)] -0.1\delta(t-T) \ast [u(t) - u(t-0.5)]$$

**Primeiro Termo**: $\delta(t) \ast [u(t) - u(t-0.5)]$

Convoluir $\delta(t)$ com $u(t) - u(t-0.5)$ resulta na própria função $u(t) - u(t-0.5)$, já que $\delta(t) \ast h(t) = h(t)$:

$$\delta(t) \ast [u(t) - u(t-0.5)] = u(t) - u(t-0.5)$$
**Segundo Termo**: $-0.1\delta(t-1) \ast [u(t) - u(t-0.5)]$

Convoluir $\delta(t-1)$ com $u(t) - u(t-0.5)$ resulta na função original, deslocada $T=1$ no tempo:

$$\delta(t-1) \ast [u(t) - u(t-0.5)] = u(t-1) - u(t-1-0.5)$$
$$= u(t-1) - u(t-1.5)$$
$$= -0.1[u(t-1) - u(t-1.5)]$$
**Soma dos resultados**

Agora somamos o primeiro e o segundo termo para encontrar $y(t)$

$$y(t) = [u(t) - u(t-0.5)] - 0.1[u(t-1) - u(t-1.5)]$$

<div align="center">ou</div>

$$y(t) = u(t) - u(t-0.5) - 0.1u(t-1) + 0.1u(t-1.5)$$

Onde podemos reorganizar a função janela gerada pela convolução e obteremos:

$$y(t) = 
\begin{cases}
1, 0 \leq t \lt 0.5 \\
-0.1, 1 \leq t \lt 1.5 \\
0, \text{outros casos}
\end{cases}
$$

![[Pasted image 20250127220955.png]]

Uma outra maneira de visualizar essa operação, é que como $x(t)$ contém impulsos $\delta (t)$, a convolução pode ser interpretada como **cópias escaladas de $h(t)$**:

$$y(t) = h(t) - 0.1h(t-1)$$

Ou seja, $h(t)$ aparece em $t=0$ e uma versão atenuada aparece em $t=1$.

### 2º Convolução

Essa convolução parte do princípio que estamos combinando duas janelas. Os sinais a serem convolvidos são ambos janelas, ou seja, expressões que representam a abertura e fechamento de um degrau.

$$x(t) = u(t) - u(t-1)$$
$$h(t) = u(t) - u(t-0.5)$$

Sendo assim, para combinar esses dois sinais a partir da convolução:

$$y(t) = x(t) \ast h(t)$$

Para isso, podemos expandir a expressão como:

![[analise-tarefa-05-01.png]]
 