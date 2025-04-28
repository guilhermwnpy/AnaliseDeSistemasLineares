## Descrição

A Transformada de Fourier

# A Transformada 


Podemos analisar sistemas lineares por diversas formas em função da propriedade da linearidade, como descrito na [[Análise - Classificação de sistemas|classificação de sistemas]] para sistemas lineares, são satisfeitas duas propriedades:

> [!definition] Aditividade
> A propriedade aditiva determina que caso tenhamos duas entradas diferentes $x_{1}$ e $x_{2}$, teremos então duas saídas $y_{1}$ e $y_{2}$. 
>
> Então pela propriedade, a soma das entradas resulta na soma das saídas:
>
> $$x_{1}+x_{2} \to y_{1}+y_{2}$$

> [!definition ] Homogeneidade
> A homogeneidade diz que para qualquer valor de $k$ (real ou imaginário), caso a entrada aumentar $k$ vezes, a saída também deve aumentar $k$ vezes.
>
> $$x \to y$$
> $$kx \to ky$$

Sendo assim, de forma resumida, a entrada de um sistema linear pode ser expresso como a soma de componentes mais simples.

Para sinais periódicos, foi visto que é possível representá-los através da [[Análise - Série de Fourier|série de fourier]]  como a soma de senóides ou exponenciais eternas na forma de $e^{j \omega t}$.

A Integral de Fourier estende essa representação espectral para sinais **não periódicos**.

## Representação de sinais não periódicos pela Integral de Fourier 

Aplicando um processo de limite, é possível descrever um **sinal não periódico** $x(t)$, pela soma contínua (integral) de exponenciais de duração infinita.

Para realizar essa representação, é preciso construir um novo sinal periódico denominado de $x_{T_{0}}(t)$ que é formado pela repetição do sinal original $x(t)$ em intervalos de $T_{0}$ segundos.

O perído $T_{0}$ é feito para que seja grande o suficiente para evitar sobreposição de pulsos seguidos.

Sendo assim, o sinal $x_{T_{0}}(t)$ pode ser representado por uma série exponencial de Fourier, e se fizermos o período dessa função tender ao infinito ($T_{0} \to \infty$), os pulsos no sinal periódico irão se repetir após um intervalo infinito.

$$\lim_{T_{0} \to \infty} x_{T_{0}}(t) = x(t)$$

