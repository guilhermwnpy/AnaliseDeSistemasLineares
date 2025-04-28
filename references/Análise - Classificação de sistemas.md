## Descrição 

Os sistemas podem ser classificados genericamente nas seguintes categorias:
1. Sistemas lineares e não lineares 
2. Sistemas com parâmetros constantes ou com parâmetros variando no tempo 
3. Sistemas instantâneos (sem memória) ou dinâmicos (com memória) 
4. Sistemas causais ou não causais 
5. Sistemas contínuos ou discretos no tempo 
6. Sistemas analógicos ou digitais 
7. Sistemas inversíveis ou não inversíveis 
8. Sistemas estáveis ou instáveis

# Classificação de Sistemas

## Sistemas Lineares e Não Lineares

**Conceito de linearidade**: Um sistema cuja saída seja proporcional a sua entrada é um exemplo de um sistema linear.

Mas a linearidade implica mais do que isso. Ela também implica a *propriedade aditiva*. 

A propriedade aditiva determina que caso tenhamos duas entradas diferentes $x_{1}$ e $x_{2}$, teremos então duas saídas $y_{1}$ e $y_{2}$. 

Então pela propriedade, a soma das entradas resulta na soma das saídas:

$$x_{1}+x_{2} \to y_{1}+y_{2}$$

Um sistema **linear**, deve também satisfazer a propriedade de *homogeneidade* ou escalonamento.

A homogeneidade diz que para qualquer valor de $k$ (real ou imaginário), caso a entrada aumentar $k$ vezes, a saída também deve aumentar $k$ vezes.

$$x \to y$$
$$kx \to ky$$

Logo a linearidade implica duas propriedades:
- Homogeneidade(escalonamento)
- Aditividade

Essas duas propriedades podem ser combinadas, e teremos assim a propriedade da **superposição**, que pode ser descrita como:

> [!info] Superposição
> Se temos $n$ valores de entrada qualquer, como exemplo, duas entradas $x_{1}$ e$x_{2}$ que passam por um sistema, tendo uma saída $y_{1}$ e $y_{2}$ respectivamente, será linear caso:
> 
> Para todos os valores de constantes $k_{1}$ e $k_{2}$:
> $$k_{1}x_{1} + k_{2}x_{2} \to k_{1}y_{1} + k_{2}+y_{2}$$

