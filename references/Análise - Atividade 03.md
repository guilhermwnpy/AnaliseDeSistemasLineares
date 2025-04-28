## Descrição 

Atividade passada em 06/12/2024, para a data 18/12/2024
- O maior intervalo de dias é devido a semana da SEMAC que ocorreu de 09/12 a 13/12

# Atividade

> [!question] Enunciado
>    Testar se os seguintes sistemas são lineares
>
> A) $x(t) \quad\to\quad \int_{-\infty}^{t} x(s) ds \quad\to\quad y(t)$
> B) $x(t) \quad\to\quad ax+b \quad\to\quad y(t), \quad y(t)=ax(t)+b, (a,b \in \mathbb{R})$
> 
> ![[WhatsApp Image 2024-12-16 at 21.42.50.jpeg]]

Para provar que o sistema descrito pela equação é um [[Análise - Classificação de sistemas#Sistemas Lineares e Não Lineares|sistema linear]], é usado o princípio da **superposição**, para verificar as duas propriedades fundamentais que determinam a linearidade de um sistema.

**Aditividade**: Se o sistema é linear, a soma de duas entradas $x_{1}(t)$ e $x_{2}(t)$ resulta na soma das saídas correspondentes.

$$x(t) = x_{1}(t) + x_{2}(t) \Longrightarrow y(t) = y_{1}(t) + y_{2}(t)$$

**Homogeneidade**: Se o sistema é linear, ao multiplicarmos a entrada $x(t)$ por uma constante $k$, a saída também será multiplicada por $k$.

$$x(t) = k \cdot x_{1}(t) \Longrightarrow y(t)= k \cdot y_{1}(t) $$

Se ambas as propriedades, Aditividade e Homogeneidade, o sistema a ser analisado é **linear**.

- **Aditividade**: $x_{1} + x_{2} \to y_{1} + y_{2}$
- **Homogeneidade**: $kx = ky$
- **Superposição**: $k_{1}x_{1} + k_{2}x_{2} = k_{1}y_{1}+k_{2}y_{2}$

## Resposta

### Sistema 1

Sistema proposto:

$$y(t) = \int_{-\infty}^{t} x(s) ds$$

Onde $x(t)$ é a entrada e $y(t)$ é a saída.

#### Aditividade

Sejam duas entradas $x_{1}(t)$ e $x_{2}(t)$, com saídas $y_{1}(t)$ e $y_{2}(t)$, tais que:

$$
y_{1}(t) = \int_{-\infty}^{t} x_{1}(s) ds 
\quad \text{e} \quad 
y_{2}(t) = \int_{-\infty}^{t} x_{2}(s) ds 
$$

Agora, consideramos uma entrada composta, conforme o princípio da aditividade:

$$x(t) = x_{1}(t) + x_{2}(t)$$

A saída correspondente de $x(t)$ será:

$$y(t) = \int_{-\infty}^{t} x(s) ds$$
$$y(t) = \int_{-\infty}^{t} [x_{1}(s) + x_{2}(s)]\, ds $$

As integrais, tem uma propriedade denominada de "A integral da soma é igual a soma das integrais", que satisfaz a propriedade da aditividade para esse sistema, sendo:

$$y(t) = \int_{-\infty}^{t} x_{1}(s) ds + \int_{-\infty}^{t} x_{2}(s) ds$$

Portanto:
$$y(t) = y_{1}(t) + y_{2}(t)$$

>[!success] Propriedade de **Aditividade** verificada.

#### Homogeneidade

Seja uma entrada $x_{1}(t)$ com saída $y_{1}(t)$, e considere a constante escalar $k$, tal que:

$$x(t) = k \cdot x_{1}(t)$$

A saída correspondente de $x(t)$ será:

$$y(t) = \int_{-\infty}^{t} x(s) ds$$
$$y(t) = \int_{-\infty}^{t} [k \cdot x_{1}(s)]\, ds$$

As integrais, tem uma propriedade que nos permite extrair a constante, o que satisfaz a propriedade da homogeneidade para esse sistema, sendo:

$$y(t) = k \cdot \int_{-\infty}^{t} x_{1}(s)\, ds$$

Portanto:

$$y(t) = k \cdot y_{1}(t)$$

>[!success] Propriedade de **Homogeneidade** verificada.

#### Conclusão

Como o sistema satisfaz as propriedades de **aditividade** e **homogeneidade**, ele satisfaz o **princípio da superposição**. Logo, o sistema descrito pela equação:

$$y(t) = \int_{-\infty}^{t} x(s) ds$$

é um **sistema linear**.

### Sistema 2

O princípio para verificar se esse sistema é linear é o mesmo utilizado anteriormente. Verificar se o sistema possui a propriedade de Aditividade e de Homogeneidade.

O sistema é descrito pela equação:

$$y(t) =  a \cdot x(t) + b, \quad a,b \in \mathbb{R}$$

Onde $x(t)$ é a entrada e $y(t)$ é a saída.

#### Aditividade

Sendo duas entradas $x_{1}(t)$ e $x_{2}(t)$, teremos como saídas $y_{1}(t)$ e $_{2}(t)$.

$$y_{1}(t) = a \cdot x_{1}(t) + b$$
$$y_{2}(t) = a \cdot x_{2}(t) + b$$

Considerando agora a entrada composta $x(t) = x_{1}(t) + x_{2}(t)$, a saída correspondente deverá ser:

$$y(t) = a \cdot x(t) + b$$
$$y(t) = a \cdot [x_{1}(t) + x_{2}(t)] + b$$

Podemos distribuir $a$ nessa equação e teremos:

$$y(t) = ax_{1}(t) + ax_{2}(t) + b$$

Foi somado as entradas e obtido um valor de saída, agora precisamos ver se somarmos os valores de saída, teremos a mesma equação:

Somando as saídas $y_{1}(t)$ e $y_{2}(t)$:

$$y_{1}(t) + y_{2}(t) = [ax_{1}(t)+b] + [ax_{b}(t)+b]$$
$$y_{1}(t) + y_{2}(t) = ax_{1}(t) + ax_{2}(t) + 2b$$

Podemos observar que a soma das entradas não resultou na mesma equação dada pela soma das saídas, portanto a aditividade não é satisfeita porque o termo $b$ duas vezes na soma.

>[!fail] Propriedade de **Aditividade** não verificada.

#### Homogeneidade

Tendo que $x(t) = k \cdot x_{1}(t)$, teremos na equação do sistema:

$$y(t) = ax(t) + b$$
$$y(t) = a \cdot [k \cdot x_{1}(t)] + b$$
$$y(t) = k \cdot ax_{1}(t) + b$$

Obtemos o resultado quando aplicamos $k$ na entrada, e obtemos um $y(t) = k \cdot ax_{1}(t) + b$. Temos agora que verificar se aplicando $k$ na saída, teremos essa mesma equação:

$$k \cdot y_{1}(t) = k \cdot [ax_{1}(t) + b] = kax_{1}(t) + kb$$

Pode-se ver que ao multiplicar $y_{1}(t)$ por $k$, obtemos a equação:

$$k \cdot y_{1}(t) = k \cdot ax_{1}(t) +k \cdot b$$

A qual não são iguais:

$$y(t) \neq k \cdot y_{1}(t)$$
$$k \cdot ax_{1}(t) + b \neq k \cdot ax_{1}(t) +k \cdot b$$

Portanto, a **homogeneidade não é satisfeita** porque o termo $b$ não é escalado pela constante $k$.

> [!fail] Propriedade de **Homogeneidade** não verificada.

#### Conclusão

O sistema $y(t) = ax(t)+b$ **não é linear** porque **não satisfaz as propriedades de aditividade e homogeneidade** devido à presença do termo constante $b$. Esse termo introduz um deslocamento (bias) na saída, quebrando a linearidade.

Para que o sistema fosse linear, a equação deveria ser apenas:

$y(t) = ax(t)$

onde $b=0$.