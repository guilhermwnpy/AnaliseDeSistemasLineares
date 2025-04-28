## Descrição 

A função impulso unitário $\delta(t)$ é uma das mais importantes funções no estudo de sinais e sistemas.

# Impulso Unitário

A função impulso unitário pode ser pensada como um pulso retangular extremamente estreito (largura tende a 0) e extremamente alta (altura tende a $\infty$), mas com a área total fixa em $1$.

A área é a quantidade de "conteúdo" sob o gráfico e é definida como o valor da integral: 

$$\int_{-\infty}^{\infty}\delta(t)dt = 1$$

## Representação do Impulso

Apesar de ser matematicamente definida, não é possível gerar um impulso unitário na prática, pois não dá pra gerar algo com largura zero e altura infinita.

Mas podemos aproximá-lo usando pulsos que seguem as mesmas características gerais.

O impulso unitário é zero em **todos os instantes**, exceto em $t=0$.

$$\delta (t) = 0 \quad t \neq 0$$

No instante $t=0$ ele é indefinido, porque aí que o pulso ideal teria largura zero e altura infinita. Mas a área permanece igual a 1.

Como não é possível gerar um impulso unitário na prática, são usadas **funções "aproximadas"** que se comportam de maneira semelhante.
- Pulsos **retangulares** estreitos e altos
- Pulsos **exponenciais**, como $\alpha e^{- \alpha t}u(t)$
- Pulsos **triangulares** ou **gaussianos**

Essas aproximações, tendo características como:
- Conforme o parâmetro que controla sua *largura* diminui($\alpha \to \infty$ no caso da exponencial), o pulso se torna mais estreito e mais alto.
- A área total é sempre igual a $1$, independente da forma ou altura.

## Intensidade do Impulso

O impulso pode ser escalado por um fator $k$, resultando em um novo impulso com área $k$:

$$\int_{-\infty}^{\infty} k \cdot \delta (t) dt = k$$

Isso significa que, multiplicando $\delta (t)$ por $k$, estamos ajustando a "intensidade" do impulso, mas ele ainda será uma função concentrada em $t=0$.

## Impulsos na prática

Na prática a função impulso é usada como uma ferramenta para modelar um "estímulo instantâneo" ou "pontual" em sistemas.

Por exemplo, quando aplicamos um impulso unitário a um sistema, ele revela a **resposta ao impulso** (função resposta ao impulso) que é útil para entender como ele reage.


## Multiplicação de uma função por impulso 

Lathi Pag. 94