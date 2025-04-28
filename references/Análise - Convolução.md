## Descrição

Convolução de funções

# Convolução

A convolução é representada por uma resposta $y(t)$ de estado nulo, dada por uma integral que aparece frequentemente em ciências, física, engenharia e matemática. Por essa razão, essa integral possui um nome especial: **Integral de Convolução**.

A Integral de Convolução de duas funções $x_{1}(t)$ e $x_{2}(t)$ é representada simbolicamente por $x_{1}(t) \ast x_{2}(t)$, sendo definida por:

$$x_{1}(t) \ast x_{2}(t) = \int_{-\infty}^{\infty} x_{1}(\tau) \cdot x_{2}(t - \tau)  \cdot d\tau$$

Em outras palavras, a convolução pode ser dita como uma operação que combina dois sinais $x_{1}(t)$ e $x_{2}(t)$ para produzir um terceiro sinal $c(t)$. 

Ela mede como a forma de um sinal é modificada pela forma do outro.

Em convolução, $\tau$ (tau) é uma variável de integração que "desliza" ao longo do tempo $t$.

Quando fazemos convolução de sinais, muitas das vezes temos o que chamamos de sinal de entrada $x(t)$ e uma resposta ao impulso denotada com $h(t)$.

A resposta ao impulso $h(t)$ é simplesmente a maneira como um sistema reage quando recebe uma entrada muito curta e intensa: o impulso dirac $\delta (t)$.

Podemos pensar o seguinte, quando se bate em um sino com um martelo, ele vai vibrar e produzir um som que vai durar por um tempo. Esse som gerado quando se bate no sino, é a **resposta do sino**, ao "impulso" da batida.

Assumimos que o sino é o sistema, batemos no sino com um martelo, essa batida é rápida, essa batida é um impulso sendo aplicado no sistema. O som e vibração gerados por essa batida são a resposta do sistema ao impulso.

Da mesma forma, se for aplicado um impulso $\delta(t)$ a um sistema, a resposta que ele gera ao longo do tempo é $h(t)$.

A ideia fundamental é que qualquer sinal de entrada $x(t)$ pode ser pensado como a soma de vários impulsos muito pequenos escalados e deslocados no tempo.

Por exemplo, vamos pensar em um sinal dado por uma senoide.

![[analise-convolution-01.png|Representação de uma Senoidal comum.]]

Como dito, esse sinal de entrada $x(t)$ que é uma senoidal, pode ser pensado como a soma de vários impulsos muito pequenos.

![[analise-convolution-02.png|Representação da Senoide comum através de pequenos impulsos escalados e deslocados no tempo.]]

Se nós sabemos como o sistema responde para um único impulso, essa resposta sendo um $h(t)$, podemos prever como ele responderá a qualquer entrada, simplesmente somando as respostas individuais dos impulsos que compõem $x(t)$.

Quando aplicamos um impulso $\delta (t)$ no sistema, o que queremos é medir **como o sistema responde a uma entradam muito rápida e intensa**. Essa resposta é dada por $h(t)$, que é o comportamento do sistema a esse impulso.

Ou seja, se aplicarmos um impulso no sistema, a saída será exatamente $h(t)$, a **resposta ao impulso**

No primeiro gráfico, temos um sinal de entrada senoidal. Podemos interpretá-lo como sendo formado por vários impulsos pequenos ao longo do tempo. Como o sistema responde a cada impulso com $h(t)$, a saída será a soma das respostas individuais desses impulsos. 

![[Pasted image 20250305011948.png]]

No segundo gráfico, a onda quadrada pode ser vista como uma sequência de impulsos positivos e negativos espaçados regularmente. 

![[Pasted image 20250305012004.png]]

No terceiro gráfico, a onda triangular pode ser decomposta como uma soma de impulsos que crescem e decrescem linearmente ao longo do tempo. 

![[Pasted image 20250305012016.png]]

## Propriedades

### Comutatividade

A comutatividade da convolução afirma que a ordem dos sinais envolvidos não importa: o resultado da operação será o mesmo.

A operação de convolução é comutativa, ou seja:

$$x_{1}(t) \ast x_{2}(t) = x_{2}(t) \ast x_{1}(t)$$

**Intuição**:

Se pensar na convolução como uma maneira de "combinar" dois sinais, a ordem em que os combina não altera o resultado final. 

Essa propriedade pode ser provada pela mudança de variável.

A convolução é definida como:

$$x_{1}(t) \ast x_{2}(t) = \int_{-\infty}^{\infty} x_{1}(\tau) \cdot x_{2}(t - \tau)  \cdot d\tau$$

**Prova**:

Para provar a comutatividade, aplicamos a mudança de variável. Tendo assim:
- $z=t-\tau$, então $\tau = t-z$
- Isso implica que $d\tau = -dz$

1. Substituímos na fórmula de convolução

$$
x_{1}(t) \ast x_{2}(t) 
= \int_{-\infty}^{\infty} x_{1}(\tau) \cdot x_{2}(t - \tau)  \cdot d\tau
$$

2. Aplicamos a mudança de variável $z=t-\tau$

$$
x_{1}(t) \ast x_{2}(t) = \int_{-\infty}^{\infty} x_{1}(t-z) \cdot x_{2}(z)(-dz)
$$

3. O sinal negativo de $-dz$ inverte os limites de integração, mas como são infinitos($-\infty$ a $\infty$), isso não muda o valor:

$$x_{1}(t) \ast x_{2}(t) = \int_{-\infty}^{\infty} x_{2}(z) \cdot x_{1}(t-z)dz$$

4. Reescrevendo

$$x_{1}(t) \ast x_{2}(t) = x_{2}(t) \ast x_{1}(t)$$

### Distributividade

A distributividade afirma que a operação de convolução se distribui sobre a soma de dois sinais. Ou seja, convoluir um sinal $x_1(t)$ com a soma de dois outros sinais $x_{2}(t) + x_{3}(t)$ é o mesmo que convoluir $x_{1}(t)$ separadamente com $x_{2}(t)$ e $x_{3}(t)$, e depois somar os resultados.

De acordo com a propriedade distributiva:

$$x_{1}(t) \ast [x_{2}(t)+x_{3}(t)] = x_{1} \ast x_{2}(t) + x_{1}(t) \ast x_{3}(t)$$

**Intuição**:

É possível pensar na convolução como um "processo de mistura" entre os sinais:
1. Primeiro, é misturado $x_{1}(t)$ com $x_{2}(t) + x_{3}(t)$.
2. Como a soma de $x_{2}(t)$ e $x_{3}(t)$ não interfere na operação de convolução, é possível "quebrar" a soma em partes e misturá-las separadamente.
3. O resultado final é a soma dos dois "efeitos" da convolução.

### Associatividade

A associatividade afirma que, quando convoluímos três sinais $x_{1}(t), x_{2}(t)$, e $x_{3}(t)$, a ordem em que realizamos as operações não importa.

De acordo com a propriedade associativa:

$$x_{1}(t) \ast [x_{2}(t) \ast x_{3}(t)] = [x_{1}(t) \ast x_{2}(t)] \ast x_{3}(t)$$ 

**Intuição**:

A associatividade pode ser entendida como o fato de que o efeito cumulativo da convolução de três sinais não depende de como os agrupamos.

Isso significa que no caso de sistemas lineares invariantes no tempo, a ordem de combinação das respostas ao impulso de múltiplos subsistemas não altera a resposta final.

### Deslocamento

A propriedade de deslocamento diz que se deslocarmos $x_{1}(t)$, $x_{2}(t)$ ou ambos, o resultado da convolução também será deslocado, mas de maneira correspondente.

Tendo como base:

$$x_{1}(t) \ast x_{2}(t) = c(t)$$

**Caso 1**: Deslocamento de $x_{2}(t)$

Se deslocarmos $x_{2}(t)$ no tempo, por exemplo, para $x_{2}(t-T)$, a convolução resultante será o mesmo $c(t)$, mas deslocado por $T$, sendo assim:

$$x_{1}(t) \ast x_{2}(t-T) = c(t-T)$$

Isso acontece, porque deslocar um dos sinais equivale a deslocar *o resultado final* no tempo

**Caso 2**: Deslocamento de $x_{1}(t)$

De forma análoga, se deslocarmos $x_{1}(t)$ em $T$, o resultado será deslocado por $T$:

$$x_{1}(t-T) \ast x_{2}(T) = c(t-T)$$
Sendo assim é verdadeiro dizer que deslocando ou $x_{1}(t)$ ou $x_{2}(t)$ individualmente, resultará no mesmo sinal de saída:

$$x_{1}(t) \ast x_{2}(t-T) = x_{1}(t-T) \ast x_{2}(t) = c(t-T)$$

**Caso 3**: Deslocamento de ambos os sinais

Se deslocarmos ambos os sinais, por $T_{1}$ e $T_{2}$, o resultado será deslocado pela soma dos deslocamentos $T_{1}+T_{2}$:

$$x_{1}(t-T_{1}) \ast x_{2}(t-T_{2}) = c(t-T_{1}-T_{2})$$

Isso faz sentido porque o deslocamento total no resultado final é a combinação dos deslocamentos individuais de cada sinal.

**Intuição**:
- Quando deslocamos um sinal no tempo, estamos simplesmente "movendo" ele para frente ou para trás
- A convolução acompanha esses deslocamentos, movendo o resultado n tempo pela mesma quantidade

## Convolução com um Impulso

A convolução de uma função $x(t)$ com o impulso unitário resulta na própria função $x(t)$. Pela definição da convolução:

$$x(t) \ast \delta(t) = \int_{-\infty}^{\infty} x(\tau)\delta(t-\tau)d\tau$$

Essa propriedade é fundamental no processamento de sinais e sistemas **lineares invariantes no tempo** (LTI), porque o impulso $\delta(t)$ atua como a "identidade" da convolução.

Como $\delta(t-T)$ é um impulso localizado em $\tau=t$, de acordo com a propriedade de amostragem do impulso, a integral acima e  o valor de $x(\tau)$ para $\tau=t$, ou seja, $x(t)$. Portanto:

$$x(t) \ast \delta(t) = x(t)$$

O impulso $\delta(t-T)$ possui a propriedade de **amostragem**, que afirma que:

$$\int_{-\infty}^{\infty} f(\tau) \cdot \delta(\tau-T)d\tau = f(T)$$

Isso significa que o impulso "seleciona" o valor da função no ponto em que ele está localizado ($\tau=T$)

**Aplicação à convolução**:

Substituímos essa propriedade de amostragem do impulso na definição da convolução:

$$x(t) \ast \delta(t) = \int_{-\infty}^{\infty} x(\tau) \cdot \delta(t-\tau)d\tau$$

Aqui, $\delta(t-\tau)$ desloca o impulso para $\tau=t$. De acordo com a propriedade de amostragem, o resultado da integral será o valor de $x(\tau)$ avaliado em $\tau=t$:

$$x(t) \ast \delta(t) = x(t)$$

**Intuição**:

O impulso $\delta(t)$ age como uma "ferramenta de identidade" da convolução, replicando a função $x(t)$ sem alterar sua forma. Em termos físicos ou de sistemas:
- Um sistema LTI convoluído com um impulso $\delta(t)$ gera como saída a própria $x(t)$.
- O impulso é como "aplicar a entrada diretamente" ao sistema.

**Exemplos**:

1. Impulso unitário sem deslocamento
   
   Se $x(t) = e^{-t}u(t)$ (uma exponencial decrescente) e convoluímos com $\delta(t)$:
   
   $$x(t) \ast \delta(t) = \int_{-\infty}^{oo} e^{-\tau}u(\tau)\cdot\delta(t-\tau)d\tau = e^{-t}u(t)$$
2. Impulso deslocado
   
   Se convoluímos $x(t)$ com $\delta(t-T)$ o resultado será uma versão deslocada de $x(t)$:
   
   $$x(t) \ast \delta(t-T) = x(t-T)$$

## Convolução de degraus

**Fórmula da convolução**:

Podemos fazer a convolução de $u(t)$ com $u(t)$, dada por:

$$y(t) = u(t) \ast u(t) = \int_{-\infty}^{\infty} u(\tau)u(t-\tau)d\tau$$

E para determinar a convolução $u(t) \ast u(t)$ precisamos entender o comportamento do termo $u(\tau)u(t-\tau)$ para encontrarmos os intervalos de integração onde essa integral não é nula.

A convolução de $u(t) \ast u(t)$ depende do comportamento das funções $u(\tau)$ e $u(t-\tau)$ no intervalo de integração $[-\infty, \infty]$. No entanto:
1. O degrau unitário $u(t)$ é **zero** para $t \lt 0$. Isso significa que fora desse intervalo(quando $t$ assume valores menores que $0$), $u(t)$ é inútil para a integral. Seu valor $0$ não contribui para a integral.
2. O produto $u(\tau)u(t-\tau)$ será **diferente de zero** somente quando ambos os termos forem iguais a $1$.

Por isso, ao determinar o intervalo de integração, precisamos identificar **onde as funções degrau são "ativas"**, pois fora desse intervalo a integral é 0.

**Análise dos termos $u(t)$ e $u(t-\tau)$**:

O degrau unitário é definido como:

$$
u(t) = 
\begin{cases}
1, t \geq 0 \\
0, t \lt 0
\end{cases}
$$

Os degraus $u(\tau)$ e $u(t-\tau)$ definem condições sobre o intervalo em que a função de convolução é diferente de zero. 

Analisando $u(\tau)$:
- Temos $u(\tau)=1$ quando $\tau \geq0$ 
- Temos $u(\tau)=0$ quando $\tau \lt 0$
- Isso significa que o produto $u(\tau)u(t-\tau)$ será automaticamente $0$ para $\tau \lt 0$

Analisando $u(t-\tau)$:
- Temos $u(t-\tau)=1$ quando $t-\tau \geq 0$, ou seja $\tau < t$
- Temos $u(t-\tau)=0$ quando $\tau \gt t$
- Isso significa que o produto $u(\tau)u(t-\tau)$ será automaticamente $0$ para $\tau \gt t$

Agora precisamos identificar o intervalo onde ambos os $u(\tau)$ e $u(t-\tau)$ são **diferentes de zero**.

**Encontrar o intervalo onde a integral é válida**:

O importante quando realizamos a convolução entre degraus, é sabermos em qual intervalo teremos o resultado da integral diferente de zero.

A integral resultar em zero, é inútil em qualquer análise de convolução, portanto limitamos o intervalo de integração para selecionar apenas onde os termos da integral sejam diferentes de zero.

Portanto, a integral será diferente de zero apenas onde os dois termos $u(\tau)$ e $u(t-\tau)$ forem iguais a $1$.

Sendo:
- $u(\tau)=1$ para $\tau \geq 0$
- $u(t-\tau) = 1$ para $\tau \leq t$

É possível identificar que a interseção dos dois intervalos ocorre quando:

$$0 \leq \tau \leq t$$

A interseção $0 \leq \tau \leq t$, que é o intervalo final de integração. Fora desse intervalo, $u(\tau)u(t-\tau)=0$, então não contribui para o resultado da integral.

Esse se torna então nosso intervalo de integração, onde podemos alterar a integral para:

$$\int_{0}^{t} u(\tau)u(t-\tau)d\tau$$

**Substituir os valores de $u(\tau)$** e $u(t-\tau)$:

Dentro do intervalo $0 \leq \tau \leq t$, $u(\tau)=1$ e $u(t-\tau)=1$, pois ambas as funções degrau valem $1$. Assim a integral se torna:

$$\int_{0}^{t} 1 \cdot 1 d\tau = \int_{0}^{t}1 d\tau$$ 

**Resolver a integral**:

Agora resolvemos a integral:

$$\int_{0}^{t} 1 d \tau = [\tau]_{0}^{t} = t-0 = t$$

**Multiplicação pelo degrau $u(t)$**:

O resultado da convolução depende da definição de $u(t)$. Para manter a definição de que a convolução só vale para $t \geq 0$, multiplicamos o resultado por $u(t)$, garantindo que a resposta válida apenas para $t \geq 0$. Assim, o resultado final é:

$$y(t) = t \cdot u(t)$$
**Intuição**:

1. A convolução de dois degraus é não nula apenas onde os dois degraus estão ativos simultaneamente ($0 \leq \tau \leq t$).
2. Dentro desse intervalo, ambos $u(\tau)$ e $u(t-\tau)$ valem 1, simplificando a integral para $\int_{0}^{t} 1 d\tau$.
3. Resolver a integral fornece $t$, e multiplicar $u(t)$ garante que a resposta seja válida apenas para $t \geq 0$.

$$u(t) \ast u(t) = t \cdot u(t)$$

