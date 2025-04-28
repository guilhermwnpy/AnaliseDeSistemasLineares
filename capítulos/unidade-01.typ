#import "@preview/marginalia:0.1.3" as marginalia: note, wideblock
#import "@preview/showybox:2.0.4": showybox
#import "@preview/fontawesome:0.5.0": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge

= Sistemas

== Sistemas Elementares

=== Sistema Elementar Atrasador

- *Descrição*: Esse sistema aplica um atraso ao sinal de entrada, deslocando-o no tempo. Matematicamente, se o sinal de entrada é $x(t)$, o sinal atrasado é dado por $y(t)=x(t - t_0)$ #note[Ex.: Podemos atrasar o sinal em 1 segundo $y(t)=(t+1)$, então um sinal que começaria em um determinado $t$, agora começa em $t+1$], onde $t_0$ é o tempo de atraso.
- *Uso do degrau*: O sinal degrau unitário $u(t)$ pode ser usado para tornar um sistema causal, garantindo que o sinal só exista para $t >= 0$. 
- *Exemplo*: Por exemplo, $x(t - t_0)u(t - t_0)$ representa um sinal atrasado e causal.

=== Sistema Elementar Somador
- *Descrição:* Esse sistema combina dois ou mais sinais de entrada ao somá-los. Para entradas $x_1(t)$ e $x_2(t)$, o sistema produz $y(t) = x_1(t) + x_2(t)$.
- *Propriedade Linear:* Esse é um exemplo direto da propriedade de aditividade de sistemas lineares.
- *Exemplo:* A soma de um sinal senoidal e um sinal exponencial: $y(t) = sin(omega dot t) + e^(-t)$

=== Sistema Elementar Amplificador/Atenuador

- *Descrição:* Esse sistema escala a amplitude de um sinal multiplicando-o por uma constante $K$. Se $K > 1$, o sistema amplifica o sinal; se $0 < K < 1$, ele atenua.
- *Matemática:* y(t) = $K dot x(t)$.
- *Exemplo:* Um sinal senoidal amplificado em 2 vezes: $y(t) = 2 dot sin(omega t).$

=== Sistema Elementar Multiplicador

- *Descrição:* Multiplica dois sinais de entrada para gerar a saída. Se os sinais de entrada são $x_1(t)$ e $x_2(t)$, a saída é $y(t) = x_1(t) dot x_2(t)$.
- *Propriedade Importante:* Quando um sinal é multiplicado por outro, a convolução de suas frequências ocorre, criando um espectro modulado.
- *Exemplo:* Um sinal senoidal modulado por uma exponencial decrescente: $y(t) = e^(-t) dot sin(omega t).$

== Classificação de Sistemas

Os sistemas podem ser classificados genericamente nas seguintes categorias:
+ Sistemas lineares e não lineares 
+ Sistemas com parâmetros constantes ou com parâmetros variando no tempo 
+ Sistemas instantâneos (sem memória) ou dinâmicos (com memória) 
+ Sistemas causais ou não causais 
+ Sistemas contínuos ou discretos no tempo 
+ Sistemas analógicos ou digitais 
+ Sistemas inversíveis ou não inversíveis 
+ Sistemas estáveis ou instáveis

=== Sistemas Lineares e Não Lineares

*Conceito de linearidade*: Um sistema cuja saída seja proporcional a sua entrada é um exemplo de um sistema linear.

Mas a linearidade implica mais do que isso. Ela também implica a *propriedade aditiva*. 

A propriedade aditiva determina que caso tenhamos duas entradas diferentes $x_1$ e $x_2$, teremos então duas saídas $y_1$ e $y_2$. 

Então pela propriedade, a soma das entradas resulta na soma das saídas:

$ x_1+x_2 -> y_1+y_2 $

Um sistema *linear*, deve também satisfazer a propriedade de *homogeneidade* ou escalonamento.

A homogeneidade diz que para qualquer valor de $k$ (real ou imaginário), caso a entrada aumentar $k$ vezes, a saída também deve aumentar $k$ vezes.

$ x -> y $

$ k x -> k y $

Logo a linearidade implica duas propriedades:
- Homogeneidade(escalonamento)
- Aditividade

Essas duas propriedades podem ser combinadas, e teremos assim a propriedade da *superposição*, que pode ser descrita como:

#showybox(
  title: "Superposição",
  frame: (
    border-color: blue,
    title-color: blue.lighten(30%),
    body-color: blue.lighten(95%),
    footer-color: blue.lighten(80%)
  ),
)[
  Se temos $n$ valores de entrada qualquer, como exemplo, duas entradas $x_1$ e $x_2$ que passam por um sistema, tendo uma saída $y_1$ e $y_2$ respectivamente, será linear caso:

  Para todos os valores de constantes $k_1$ e $k_2$:
  $ k_1 x_1 + k_2 x_2 -> k_1 y_1 + k_2 y_2 $
]

== Atividades

=== Atividade 1 

#showybox(
  title: [
    #fa-icon("question", solid: true) Enunciado 
    #note[
      #text(fill: black)[
        Atividade 01 passada pelo professor Jugurta no período 2024.1
      ]
    ]
  ],
  frame: (
    border-color: rgb("#BB3E00"),
    title-color: rgb("#BB3E00").lighten(30%),
    body-color: rgb("#BB3E00").lighten(95%)
  )
)[
  Usem os sinais elementares e o sistema de elementar descrito, para construir os sinais.

  #align(center)[
    #diagram(
      spacing: (10mm, 5mm),
      node-stroke: 1pt,
      edge-stroke: 1pt,
      mark-scale: 60%,
      node((0,0), $x(t)$),
      edge((0,0), "r", "-|>"),
      node((1,0), "Sistema"),
      edge((1,0), "r", "-|>"),
      node((2,0), $x(a t)$),
    )
  ]

  #image("../img/20241129_123400.jpg")
]

*Resposta 1*:

Considerando o sinal elementar $s \( t \)$, que determina uma função seno, operando sobre o produto da frequência angular e o tempo, temos $s \( t \) = s e n \( omega dot.op t \)$. Onde a frequência angular é expressa como a divisão entre $2 pi$ pelo período $T$, temos $frac(2 dot.op pi, T)$. Portanto, a função elementar é dada por: $s e n \( frac(2 dot.op pi, T) dot.op t \)$.

Portanto conseguimos desenvolver um sinal seno com período de 3, determinando o parâmetro $T$ da fórmula como $T = 3$. Sendo assim, esse sinal senoidal, gerado ao longo do tempo terá período 3.

*Resposta 2*:

O sinal elementar $e \( t \)$ é determinado pela forma da função elementar exponencial, na forma base $e \( t \) = A dot.op e^(a dot.op t)$. A partir desse sinal, é preciso determinar quais valores conseguem satisfazer as condições.

$ x \( 0 \) = 1 \, quad x \( 3 \) = 1 / 2 $

A primeira condição temos um tempo igual a $0$, e a resposta do sinal é $1$, portanto podemos usando a forma geral do sinal, $e \( 0 \) = 1 = A dot.op e^(- alpha dot.op 0)$, a exponencial se torna $1$, tendo assim $1 = A dot.op 1$, a amplitude será $1$, e a equação final para essa condição será $e \( t \) = e^(- alpha dot.op t)$. O $alpha$ ser negativo, faz o sinal ser uma exponencial decrescente.

A segunda condição diz que temos um tempo igual a $3$, e a resposta do sinal é $1 / 2$, portanto podemos usando o sinal base encontrado anteriormente, $1 / 2 = e^(- alpha dot.op 3)$. Usando as propriedades dos exponenciais, e aplicando logaritmo em ambos os lados temos $l n (1 / 2) = - 3 dot.op alpha$. Temos que $l n (1 / 2) = - l n \( 2 \)$, temos $- l n \( 2 \) = - 3 dot.op alpha$. Pode-se simplificar a equação por $- 3$, então $alpha = frac(l n \( 2 \), 3)$. Substituindo $alpha$ na equação original teremos $e \( t \) = e^(- frac(l n \( 2 \), 3) dot.op t)$. Finalmente, pelas propriedades da exponencial, podemos escrever a função final com: $e \( t \) = 2^(t / 3)$.

=== Atividade 2 

#showybox(
  title: [
    #fa-icon("question", solid: true) Enunciado 
    #note[
      #text(fill: black)[
        Atividade 02 passada pelo professor Jugurta no período 2024.1
      ]
    ]
  ],
  frame: (
    border-color: rgb("#BB3E00"),
    title-color: rgb("#BB3E00").lighten(30%),
    body-color: rgb("#BB3E00").lighten(95%)
  )
)[
  Usando os sinais e sistemas elementares apresentados até agora, descrever o sistema seguinte
  #image("../img/analise-atividade-02.svg")
  #image("../img/20241204_123325.jpg")
]

*Resposta*:

O sinal pode ser obtido pela combinação dos 3 sinais elementares de entrada.

_Degrau_:

O sinal degrau $u \( t \)$, faz com que para $t < 0$, o sinal de saída se comporte como se fosse um sinal adormecido. Quando $t gt.eq 1$, o sinal inicia.

_Senoide_:

A senoide do sistema, carrega algumas características. Essa senoide completa um ciclo a cada $5$ unidades de tempo, além de possuir um atraso de $pi / 2$, sendo assim o sinal da senoide pode ser representado como:

$ upright("sen") (frac(2 pi, 5) dot.op t + pi / 2) $

_Exponencial_:

Por fim, o envoltório no sinal de saída é formado por uma exponencial decrescente. Representada pela função $3 dot.op e^(- 2 t)$, faz com que o sinal da senoide seja atenuado, como se fosse um amortecedor.

#image("../img/analise-atividade-02-plot.svg")

=== Atividade 3 

#showybox(
  title: [
    #fa-icon("question", solid: true) Enunciado 
    #note[
      #text(fill: black)[
        Atividade 03 passada pelo professor Jugurta no período 2024.1
      ]
    ]
  ],  frame: (
    border-color: rgb("#BB3E00"),
    title-color: rgb("#BB3E00").lighten(30%),
    body-color: rgb("#BB3E00").lighten(95%)
  )
)[
  Testar se os seguintes sistemas são lineares

  + $x \( t \) quad arrow.r quad integral_(- oo)^t x \( s \) d s quad arrow.r quad y \( t \)$
  + $x \( t \) quad arrow.r quad a x + b quad arrow.r quad y \( t \) \, quad y \( t \) = a x \( t \) + b \, \( a \, b in bb(R) \)$
  #image("../img/WhatsApp Image 2024-12-16 at 21.42.50.jpeg")
]

Para provar que o sistema descrito pela equação é um sistema
linear, é usado o princípio da #strong[superposição];, para
verificar as duas propriedades fundamentais que determinam a linearidade
de um sistema.

#strong[Aditividade];: Se o sistema é linear, a soma de duas entradas
$x_1 \( t \)$ e $x_2 \( t \)$ resulta na soma das saídas
correspondentes.

$ x \( t \) = x_1 \( t \) + x_2 \( t \) arrow.r.double y \( t \) = y_1 \( t \) + y_2 \( t \) $

#strong[Homogeneidade];: Se o sistema é linear, ao multiplicarmos a
entrada $x \( t \)$ por uma constante $k$, a saída também será
multiplicada por $k$.

$ x \( t \) = k dot.op x_1 \( t \) arrow.r.double y \( t \) = k dot.op y_1 \( t \) $

Se ambas as propriedades, Aditividade e Homogeneidade, o sistema a ser
analisado é #strong[linear];.

- #strong[Aditividade];: $x_1 + x_2 arrow.r y_1 + y_2$
- #strong[Homogeneidade];: $k x = k y$
- #strong[Superposição];: $k_1 x_1 + k_2 x_2 = k_1 y_1 + k_2 y_2$

*Resposta*:

1. Sistema 1

Sistema proposto:

$ y \( t \) = integral_(- oo)^t x \( s \) d s $

Onde $x \( t \)$ é a entrada e $y \( t \)$ é a saída.

_Aditividade_

Sejam duas entradas $x_1 \( t \)$ e $x_2 \( t \)$, com saídas
$y_1 \( t \)$ e $y_2 \( t \)$, tais que:

$ y_1 \( t \) = integral_(- oo)^t x_1 \( s \) d s quad upright("e") quad y_2 \( t \) = integral_(- oo)^t x_2 \( s \) d s $

Agora, consideramos uma entrada composta, conforme o princípio da
aditividade:

$ x \( t \) = x_1 \( t \) + x_2 \( t \) $

A saída correspondente de $x \( t \)$ será:

$ y \( t \) = integral_(- oo)^t x \( s \) d s $
$ y \( t \) = integral_(- oo)^t \[ x_1 \( s \) + x_2 \( s \) \] thin d s $

As integrais, tem uma propriedade denominada de "A integral da soma é
igual a soma das integrais", que satisfaz a propriedade da aditividade
para esse sistema, sendo:

$ y \( t \) = integral_(- oo)^t x_1 \( s \) d s + integral_(- oo)^t x_2 \( s \) d s $

Portanto: $ y \( t \) = y_1 \( t \) + y_2 \( t \) $


#showybox(
  title: [#fa-icon("check", solid: true) Propriedade de #strong[Aditividade] verificada.],
  frame: (
    border-color: green,
    title-color: green,
    body-color: green,
  )
)

_Homogeneidade_

Seja uma entrada $x_1 \( t \)$ com saída $y_1 \( t \)$, e considere a
constante escalar $k$, tal que:

$ x \( t \) = k dot.op x_1 \( t \) $

A saída correspondente de $x \( t \)$ será:

$ y \( t \) = integral_(- oo)^t x \( s \) d s $
$ y \( t \) = integral_(- oo)^t \[ k dot.op x_1 \( s \) \] thin d s $

As integrais, tem uma propriedade que nos permite extrair a constante, o
que satisfaz a propriedade da homogeneidade para esse sistema, sendo:

$ y \( t \) = k dot.op integral_(- oo)^t x_1 \( s \) thin d s $

Portanto:

$ y \( t \) = k dot.op y_1 \( t \) $

#showybox(
  title: [#fa-icon("check", solid: true) Propriedade de #strong[Homogeneidade] verificada.],
  frame: (
    border-color: green,
    title-color: green,
    body-color: green,
  )
)

_Conclusão_

Como o sistema satisfaz as propriedades de #strong[aditividade] e
#strong[homogeneidade];, ele satisfaz o #strong[princípio da
superposição];. Logo, o sistema descrito pela equação:

$ y \( t \) = integral_(- oo)^t x \( s \) d s $

é um #strong[sistema linear];.

2. Sistema 2

O princípio para verificar se esse sistema é linear é o mesmo utilizado
anteriormente. Verificar se o sistema possui a propriedade de
Aditividade e de Homogeneidade.

O sistema é descrito pela equação:

$ y \( t \) = a dot.op x \( t \) + b \, quad a \, b in bb(R) $

Onde $x \( t \)$ é a entrada e $y \( t \)$ é a saída.

_Aditividade_

Sendo duas entradas $x_1 \( t \)$ e $x_2 \( t \)$, teremos como saídas
$y_1 \( t \)$ e $""_2 \( t \)$.

$ y_1 \( t \) = a dot.op x_1 \( t \) + b $
$ y_2 \( t \) = a dot.op x_2 \( t \) + b $

Considerando agora a entrada composta
$x \( t \) = x_1 \( t \) + x_2 \( t \)$, a saída correspondente deverá
ser:

$ y \( t \) = a dot.op x \( t \) + b $
$ y \( t \) = a dot.op \[ x_1 \( t \) + x_2 \( t \) \] + b $

Podemos distribuir $a$ nessa equação e teremos:

$ y \( t \) = a x_1 \( t \) + a x_2 \( t \) + b $

Foi somado as entradas e obtido um valor de saída, agora precisamos ver
se somarmos os valores de saída, teremos a mesma equação:

Somando as saídas $y_1 \( t \)$ e $y_2 \( t \)$:

$ y_1 \( t \) + y_2 \( t \) = \[ a x_1 \( t \) + b \] + \[ a x_b \( t \) + b \] $
$ y_1 \( t \) + y_2 \( t \) = a x_1 \( t \) + a x_2 \( t \) + 2 b $

Podemos observar que a soma das entradas não resultou na mesma equação
dada pela soma das saídas, portanto a aditividade não é satisfeita
porque o termo $b$ duas vezes na soma.

#showybox(
  title: [#fa-icon("xmark", solid: true) Propriedade de #strong[Aditividade] não verificada.],
  frame: (
    border-color: red,
    title-color: red,
    body-color: red,
  )
)

_Homogeneidade_

Tendo que $x \( t \) = k dot.op x_1 \( t \)$, teremos na equação do
sistema:

$ y \( t \) = a x \( t \) + b $
$ y \( t \) = a dot.op \[ k dot.op x_1 \( t \) \] + b $
$ y \( t \) = k dot.op a x_1 \( t \) + b $

Obtemos o resultado quando aplicamos $k$ na entrada, e obtemos um
$y \( t \) = k dot.op a x_1 \( t \) + b$. Temos agora que verificar se
aplicando $k$ na saída, teremos essa mesma equação:

$ k dot.op y_1 \( t \) = k dot.op \[ a x_1 \( t \) + b \] = k a x_1 \( t \) + k b $

Pode-se ver que ao multiplicar $y_1 \( t \)$ por $k$, obtemos a equação:

$ k dot.op y_1 \( t \) = k dot.op a x_1 \( t \) + k dot.op b $

A qual não são iguais:

$ y \( t \) eq.not k dot.op y_1 \( t \) $
$ k dot.op a x_1 \( t \) + b eq.not k dot.op a x_1 \( t \) + k dot.op b $

Portanto, a #strong[homogeneidade não é satisfeita] porque o termo $b$
não é escalado pela constante $k$.

#showybox(
  title: [#fa-icon("xmark", solid: true) Propriedade de #strong[Aditividade] verificada.],
  frame: (
    border-color: red,
    title-color: red,
    body-color: red,
  )
)


_Conclusão_

O sistema $y \( t \) = a x \( t \) + b$ #strong[não é linear] porque
#strong[não satisfaz as propriedades de aditividade e homogeneidade]
devido à presença do termo constante $b$. Esse termo introduz um
deslocamento (bias) na saída, quebrando a linearidade.

Para que o sistema fosse linear, a equação deveria ser apenas:

$ y \( t \) = a x \( t \) $ 

onde $b = 0$.

// FUNÇÃO IMPULSO UNITÁRIO

= Função Impulso Unitário

A função impulso unitário $delta \( t \)$ é uma das mais importantes
funções no estudo de sinais e sistemas.

A função impulso unitário pode ser pensada como um pulso retangular
extremamente estreito (largura tende a 0) e extremamente alta (altura
tende a $oo$), mas com a área total fixa em $1$.

A área é a quantidade de "conteúdo" sob o gráfico e é definida como o
valor da integral:

$ integral_(- oo)^oo delta \( t \) d t = 1 $

== Representação do Impulso

Apesar de ser matematicamente definida, não é possível gerar um impulso
unitário na prática, pois não dá pra gerar algo com largura zero e
altura infinita.

Mas podemos aproximá-lo usando pulsos que seguem as mesmas
características gerais.

O impulso unitário é zero em #strong[todos os instantes];, exceto em
$t = 0$.

$ delta \( t \) = 0 quad t eq.not 0 $

No instante $t = 0$ ele é indefinido, porque aí que o pulso ideal teria
largura zero e altura infinita. Mas a área permanece igual a 1.

Como não é possível gerar um impulso unitário na prática, são usadas
#strong[funções "aproximadas"] que se comportam de maneira semelhante. -
Pulsos #strong[retangulares] estreitos e altos - Pulsos
#strong[exponenciais];, como $alpha e^(- alpha t) u \( t \)$ - Pulsos
#strong[triangulares] ou #strong[gaussianos]

Essas aproximações, tendo características como: - Conforme o parâmetro
que controla sua #emph[largura] diminui($alpha arrow.r oo$ no caso da
exponencial), o pulso se torna mais estreito e mais alto. - A área total
é sempre igual a $1$, independente da forma ou altura.

== Intensidade do Impulso

O impulso pode ser escalado por um fator $k$, resultando em um novo
impulso com área $k$:

$ integral_(- oo)^oo k dot.op delta \( t \) d t = k $

Isso significa que, multiplicando $delta \( t \)$ por $k$, estamos
ajustando a "intensidade" do impulso, mas ele ainda será uma função
concentrada em $t = 0$.

== Impulsos na prática

Na prática a função impulso é usada como uma ferramenta para modelar um
"estímulo instantâneo" ou "pontual" em sistemas.

Por exemplo, quando aplicamos um impulso unitário a um sistema, ele
revela a #strong[resposta ao impulso] (função resposta ao impulso) que é
útil para entender como ele reage.

== Multiplicação de uma função por impulso

Lathi Pag. 94

== Atividades

=== Atividade 4

#showybox(
  title: [
    #fa-icon("question", solid: true) Enunciado 
    #note[
      #text(fill: black)[
        Atividade 04 passada pelo professor Jugurta no período 2024.1
      ]
    ]
  ],
  frame: (
    border-color: rgb("#BB3E00"),
    title-color: rgb("#BB3E00").lighten(30%),
    body-color: rgb("#BB3E00").lighten(95%)
  )
)[
  Com o trem de impulso $x \( t \)$, determinado por:

  $ x \( t \) = 2 delta \( t - 0.1 \) - 0.5 delta \( t + 0.5 \) + 2 delta \( t + 1 \) $

  Encontrar a saída do sistema $y \( t \)$, dada a resposta ao impulso
  sendo:

  $ h \( t \) = e^(- 0.1 t) u \( t \) $
  #image("../img/IMG-20241218-WA0015.jpg")
]

*Resposta*

A resposta ao impulso pode ser calculada separadamente para cada impulso
do trem de impulso, devido às propriedades lineares do sistema ao qual o
sinal é submetido, portanto podemos separar os impulsos e calcular a
resposta:

Para $x_1 = 2 delta \( t - 0.1 \)$, a resposta é $2 h \( t - 0.1 \)$

$ 2 h \( t - 0.1 \) = 2 e^(- 0.1 \( t - 0.1 \)) u \( t - 0.1 \) $

Para $x_2 = - 0.5 delta \( t + 0.5 \)$, a resposta é
$- 0.5 h \( t + 0.5 \)$

$ - 0.5 h \( t + 0.5 \) = - 0.5 e^(- 0.1 \( t + 0.5 \)) u \( t + 0.5 \) $

Para $x_3 = 2 delta \( t + 1 \)$, a resposta é $2 h \( t + 1 \)$

$ 2 h \( t + 1 \) = 2 e^(- 0.1 \( t + 1 \)) u \( t + 1 \) $

Agora somamos a resposta dos três impulsos para obter a resposta total
$y \( t \)$:

#showybox(
  title: [#fa-icon("check", solid: true) Resposta],
  frame: (
    border-color: green,
    title-color: green,
    body-color: green.lighten(90%),
  )
)[
  $ y \( t \) = 2 e^(- 0.1 \( t - 0.1 \)) u \( t - 0.1 \) - 0.5 e^(- 0.1 \( t + 0.5 \)) u \( t + 0.5 \) + 2 e^(- 0.1 \( t + 1 \)) u \( t + 1 \) $
]

= Convolução

A convolução é representada por uma resposta $y \( t \)$ de estado nulo,
dada por uma integral que aparece frequentemente em ciências, física,
engenharia e matemática. Por essa razão, essa integral possui um nome
especial: #strong[Integral de Convolução];.

A Integral de Convolução de duas funções $x_1 \( t \)$ e $x_2 \( t \)$ é
representada simbolicamente por $x_1 \( t \) \* x_2 \( t \)$, sendo
definida por:

$ x_1 \( t \) \* x_2 \( t \) = integral_(- oo)^oo x_1 \( tau \) dot.op x_2 \( t - tau \) dot.op d tau $

Em outras palavras, a convolução pode ser dita como uma operação que
combina dois sinais $x_1 \( t \)$ e $x_2 \( t \)$ para produzir um
terceiro sinal $c \( t \)$.

Ela mede como a forma de um sinal é modificada pela forma do outro.

Em convolução, $tau$ (tau) é uma variável de integração que "desliza" ao
longo do tempo $t$.

Quando fazemos convolução de sinais, muitas das vezes temos o que
chamamos de sinal de entrada $x \( t \)$ e uma resposta ao impulso
denotada com $h \( t \)$.

A resposta ao impulso $h \( t \)$ é simplesmente a maneira como um
sistema reage quando recebe uma entrada muito curta e intensa: o impulso
dirac $delta \( t \)$.

Podemos pensar o seguinte, quando se bate em um sino com um martelo, ele
vai vibrar e produzir um som que vai durar por um tempo. Esse som gerado
quando se bate no sino, é a #strong[resposta do sino];, ao "impulso" da
batida.

Assumimos que o sino é o sistema, batemos no sino com um martelo, essa
batida é rápida, essa batida é um impulso sendo aplicado no sistema. O
som e vibração gerados por essa batida são a resposta do sistema ao
impulso.

Da mesma forma, se for aplicado um impulso $delta \( t \)$ a um sistema,
a resposta que ele gera ao longo do tempo é $h \( t \)$.

A ideia fundamental é que qualquer sinal de entrada $x \( t \)$ pode ser
pensado como a soma de vários impulsos muito pequenos escalados e
deslocados no tempo.

Por exemplo, vamos pensar em um sinal dado por uma senoide.

#image("../img/analise-convolution-01.png")

Como dito, esse sinal de entrada $x \( t \)$ que é uma senoidal, pode
ser pensado como a soma de vários impulsos muito pequenos.

#image("../img/analise-convolution-02.png")

Se nós sabemos como o sistema responde para um único impulso, essa
resposta sendo um $h \( t \)$, podemos prever como ele responderá a
qualquer entrada, simplesmente somando as respostas individuais dos
impulsos que compõem $x \( t \)$.

Quando aplicamos um impulso $delta \( t \)$ no sistema, o que queremos é
medir #strong[como o sistema responde a uma entradam muito rápida e
intensa];. Essa resposta é dada por $h \( t \)$, que é o comportamento
do sistema a esse impulso.

Ou seja, se aplicarmos um impulso no sistema, a saída será exatamente
$h \( t \)$, a #strong[resposta ao impulso]

No primeiro gráfico, temos um sinal de entrada senoidal. Podemos
interpretá-lo como sendo formado por vários impulsos pequenos ao longo
do tempo. Como o sistema responde a cada impulso com $h \( t \)$, a
saída será a soma das respostas individuais desses impulsos.

#image("../img/Pasted image 20250305011948.png")

No segundo gráfico, a onda quadrada pode ser vista como uma sequência de
impulsos positivos e negativos espaçados regularmente.

#image("../img/Pasted image 20250305012004.png")

No terceiro gráfico, a onda triangular pode ser decomposta como uma soma
de impulsos que crescem e decrescem linearmente ao longo do tempo.

#image("../img/Pasted image 20250305012016.png")

== Propriedades

=== Comutatividade

A comutatividade da convolução afirma que a ordem dos sinais envolvidos
não importa: o resultado da operação será o mesmo.

A operação de convolução é comutativa, ou seja:

$ x_1 \( t \) \* x_2 \( t \) = x_2 \( t \) \* x_1 \( t \) $

#strong[Intuição];:

Se pensar na convolução como uma maneira de "combinar" dois sinais, a
ordem em que os combina não altera o resultado final.

Essa propriedade pode ser provada pela mudança de variável.

A convolução é definida como:

$ x_1 \( t \) \* x_2 \( t \) = integral_(- oo)^oo x_1 \( tau \) dot.op x_2 \( t - tau \) dot.op d tau $

#strong[Prova];:

Para provar a comutatividade, aplicamos a mudança de variável. Tendo
assim: - $z = t - tau$, então $tau = t - z$ - Isso implica que
$d tau = - d z$

+ Substituímos na fórmula de convolução

$ x_1 \( t \) \* x_2 \( t \) = integral_(- oo)^oo x_1 \( tau \) dot.op x_2 \( t - tau \) dot.op d tau $

#block[
#set enum(numbering: "1.", start: 2)
+ Aplicamos a mudança de variável $z = t - tau$
]

$ x_1 \( t \) \* x_2 \( t \) = integral_(- oo)^oo x_1 \( t - z \) dot.op x_2 \( z \) \( - d z \) $

#block[
#set enum(numbering: "1.", start: 3)
+ O sinal negativo de $- d z$ inverte os limites de integração, mas como
  são infinitos($- oo$ a $oo$), isso não muda o valor:
]

$ x_1 \( t \) \* x_2 \( t \) = integral_(- oo)^oo x_2 \( z \) dot.op x_1 \( t - z \) d z $

#block[
#set enum(numbering: "1.", start: 4)
+ Reescrevendo
]

$ x_1 \( t \) \* x_2 \( t \) = x_2 \( t \) \* x_1 \( t \) $

=== Distributividade

A distributividade afirma que a operação de convolução se distribui
sobre a soma de dois sinais. Ou seja, convoluir um sinal $x_1 \( t \)$
com a soma de dois outros sinais $x_2 \( t \) + x_3 \( t \)$ é o mesmo
que convoluir $x_1 \( t \)$ separadamente com $x_2 \( t \)$ e
$x_3 \( t \)$, e depois somar os resultados.

De acordo com a propriedade distributiva:

$ x_1 \( t \) \* \[ x_2 \( t \) + x_3 \( t \) \] = x_1 \* x_2 \( t \) + x_1 \( t \) \* x_3 \( t \) $

#strong[Intuição];:

É possível pensar na convolução como um "processo de mistura" entre os
sinais: 1. Primeiro, é misturado $x_1 \( t \)$ com
$x_2 \( t \) + x_3 \( t \)$. 2. Como a soma de $x_2 \( t \)$ e
$x_3 \( t \)$ não interfere na operação de convolução, é possível
"quebrar" a soma em partes e misturá-las separadamente. 3. O resultado
final é a soma dos dois "efeitos" da convolução.

=== Associatividade

A associatividade afirma que, quando convoluímos três sinais
$x_1 \( t \) \, x_2 \( t \)$, e $x_3 \( t \)$, a ordem em que realizamos
as operações não importa.

De acordo com a propriedade associativa:

$ x_1 \( t \) \* \[ x_2 \( t \) \* x_3 \( t \) \] = \[ x_1 \( t \) \* x_2 \( t \) \] \* x_3 \( t \) $

#strong[Intuição];:

A associatividade pode ser entendida como o fato de que o efeito
cumulativo da convolução de três sinais não depende de como os
agrupamos.

Isso significa que no caso de sistemas lineares invariantes no tempo, a
ordem de combinação das respostas ao impulso de múltiplos subsistemas
não altera a resposta final.

=== Deslocamento

A propriedade de deslocamento diz que se deslocarmos $x_1 \( t \)$,
$x_2 \( t \)$ ou ambos, o resultado da convolução também será deslocado,
mas de maneira correspondente.

Tendo como base:

$ x_1 \( t \) \* x_2 \( t \) = c \( t \) $

#strong[Caso 1];: Deslocamento de $x_2 \( t \)$

Se deslocarmos $x_2 \( t \)$ no tempo, por exemplo, para
$x_2 \( t - T \)$, a convolução resultante será o mesmo $c \( t \)$, mas
deslocado por $T$, sendo assim:

$ x_1 \( t \) \* x_2 \( t - T \) = c \( t - T \) $

Isso acontece, porque deslocar um dos sinais equivale a deslocar #emph[o
resultado final] no tempo

#strong[Caso 2];: Deslocamento de $x_1 \( t \)$

De forma análoga, se deslocarmos $x_1 \( t \)$ em $T$, o resultado será
deslocado por $T$:

$ x_1 \( t - T \) \* x_2 \( T \) = c \( t - T \) $ Sendo assim é
verdadeiro dizer que deslocando ou $x_1 \( t \)$ ou $x_2 \( t \)$
individualmente, resultará no mesmo sinal de saída:

$ x_1 \( t \) \* x_2 \( t - T \) = x_1 \( t - T \) \* x_2 \( t \) = c \( t - T \) $

#strong[Caso 3];: Deslocamento de ambos os sinais

Se deslocarmos ambos os sinais, por $T_1$ e $T_2$, o resultado será
deslocado pela soma dos deslocamentos $T_1 + T_2$:

$ x_1 \( t - T_1 \) \* x_2 \( t - T_2 \) = c \( t - T_1 - T_2 \) $

Isso faz sentido porque o deslocamento total no resultado final é a
combinação dos deslocamentos individuais de cada sinal.

#strong[Intuição];: - Quando deslocamos um sinal no tempo, estamos
simplesmente "movendo" ele para frente ou para trás - A convolução
acompanha esses deslocamentos, movendo o resultado n tempo pela mesma
quantidade

== Convolução com um Impulso

A convolução de uma função $x \( t \)$ com o impulso unitário resulta na
própria função $x \( t \)$. Pela definição da convolução:

$ x \( t \) \* delta \( t \) = integral_(- oo)^oo x \( tau \) delta \( t - tau \) d tau $

Essa propriedade é fundamental no processamento de sinais e sistemas
#strong[lineares invariantes no tempo] (LTI), porque o impulso
$delta \( t \)$ atua como a "identidade" da convolução.

Como $delta \( t - T \)$ é um impulso localizado em $tau = t$, de acordo
com a propriedade de amostragem do impulso, a integral acima e o valor
de $x \( tau \)$ para $tau = t$, ou seja, $x \( t \)$. Portanto:

$ x \( t \) \* delta \( t \) = x \( t \) $

O impulso $delta \( t - T \)$ possui a propriedade de
#strong[amostragem];, que afirma que:

$ integral_(- oo)^oo f \( tau \) dot.op delta \( tau - T \) d tau = f \( T \) $

Isso significa que o impulso "seleciona" o valor da função no ponto em
que ele está localizado ($tau = T$)

#strong[Aplicação à convolução];:

Substituímos essa propriedade de amostragem do impulso na definição da
convolução:

$ x \( t \) \* delta \( t \) = integral_(- oo)^oo x \( tau \) dot.op delta \( t - tau \) d tau $

Aqui, $delta \( t - tau \)$ desloca o impulso para $tau = t$. De acordo
com a propriedade de amostragem, o resultado da integral será o valor de
$x \( tau \)$ avaliado em $tau = t$:

$ x \( t \) \* delta \( t \) = x \( t \) $

#strong[Intuição];:

O impulso $delta \( t \)$ age como uma "ferramenta de identidade" da
convolução, replicando a função $x \( t \)$ sem alterar sua forma. Em
termos físicos ou de sistemas: - Um sistema LTI convoluído com um
impulso $delta \( t \)$ gera como saída a própria $x \( t \)$. - O
impulso é como "aplicar a entrada diretamente" ao sistema.

#strong[Exemplos];:

+ Impulso unitário sem deslocamento

  Se $x \( t \) = e^(- t) u \( t \)$ (uma exponencial decrescente) e
  convoluímos com $delta \( t \)$:

  $ x \( t \) \* delta \( t \) = integral_(- oo)^(o o) e^(- tau) u \( tau \) dot.op delta \( t - tau \) d tau = e^(- t) u \( t \) $

+ Impulso deslocado

  Se convoluímos $x \( t \)$ com $delta \( t - T \)$ o resultado será
  uma versão deslocada de $x \( t \)$:

  $ x \( t \) \* delta \( t - T \) = x \( t - T \) $

== Convolução de degraus

#strong[Fórmula da convolução];:

Podemos fazer a convolução de $u \( t \)$ com $u \( t \)$, dada por:

$ y \( t \) = u \( t \) \* u \( t \) = integral_(- oo)^oo u \( tau \) u \( t - tau \) d tau $

E para determinar a convolução $u \( t \) \* u \( t \)$ precisamos
entender o comportamento do termo $u \( tau \) u \( t - tau \)$ para
encontrarmos os intervalos de integração onde essa integral não é nula.

A convolução de $u \( t \) \* u \( t \)$ depende do comportamento das
funções $u \( tau \)$ e $u \( t - tau \)$ no intervalo de integração
$\[ - oo \, oo \]$. No entanto: 1. O degrau unitário $u \( t \)$ é
#strong[zero] para $t < 0$. Isso significa que fora desse
intervalo(quando $t$ assume valores menores que $0$), $u \( t \)$ é
inútil para a integral. Seu valor $0$ não contribui para a integral. 2.
O produto $u \( tau \) u \( t - tau \)$ será #strong[diferente de zero]
somente quando ambos os termos forem iguais a $1$.

Por isso, ao determinar o intervalo de integração, precisamos
identificar #strong[onde as funções degrau são "ativas"];, pois fora
desse intervalo a integral é 0.

#strong[Análise dos termos $u \( t \)$ e $u \( t - tau \)$];:

O degrau unitário é definido como:

$ u \( t \) = {1 \, t gt.eq 0\
0 \, t < 0 $

Os degraus $u \( tau \)$ e $u \( t - tau \)$ definem condições sobre o
intervalo em que a função de convolução é diferente de zero.

Analisando $u \( tau \)$: - Temos $u \( tau \) = 1$ quando $tau gt.eq 0$
\- Temos $u \( tau \) = 0$ quando $tau < 0$ - Isso significa que o
produto $u \( tau \) u \( t - tau \)$ será automaticamente $0$ para
$tau < 0$

Analisando $u \( t - tau \)$: - Temos $u \( t - tau \) = 1$ quando
$t - tau gt.eq 0$, ou seja $tau < t$ - Temos $u \( t - tau \) = 0$
quando $tau > t$ - Isso significa que o produto
$u \( tau \) u \( t - tau \)$ será automaticamente $0$ para $tau > t$

Agora precisamos identificar o intervalo onde ambos os $u \( tau \)$ e
$u \( t - tau \)$ são #strong[diferentes de zero];.

#strong[Encontrar o intervalo onde a integral é válida];:

O importante quando realizamos a convolução entre degraus, é sabermos em
qual intervalo teremos o resultado da integral diferente de zero.

A integral resultar em zero, é inútil em qualquer análise de convolução,
portanto limitamos o intervalo de integração para selecionar apenas onde
os termos da integral sejam diferentes de zero.

Portanto, a integral será diferente de zero apenas onde os dois termos
$u \( tau \)$ e $u \( t - tau \)$ forem iguais a $1$.

Sendo: - $u \( tau \) = 1$ para $tau gt.eq 0$ - $u \( t - tau \) = 1$
para $tau lt.eq t$

É possível identificar que a interseção dos dois intervalos ocorre
quando:

$ 0 lt.eq tau lt.eq t $

A interseção $0 lt.eq tau lt.eq t$, que é o intervalo final de
integração. Fora desse intervalo, $u \( tau \) u \( t - tau \) = 0$,
então não contribui para o resultado da integral.

Esse se torna então nosso intervalo de integração, onde podemos alterar
a integral para:

$ integral_0^t u \( tau \) u \( t - tau \) d tau $

#strong[Substituir os valores de $u \( tau \)$] e $u \( t - tau \)$:

Dentro do intervalo $0 lt.eq tau lt.eq t$, $u \( tau \) = 1$ e
$u \( t - tau \) = 1$, pois ambas as funções degrau valem $1$. Assim a
integral se torna:

$ integral_0^t 1 dot.op 1 d tau = integral_0^t 1 d tau $

#strong[Resolver a integral];:

Agora resolvemos a integral:

$ integral_0^t 1 d tau = \[ tau \]_0^t = t - 0 = t $

#strong[Multiplicação pelo degrau $u \( t \)$];:

O resultado da convolução depende da definição de $u \( t \)$. Para
manter a definição de que a convolução só vale para $t gt.eq 0$,
multiplicamos o resultado por $u \( t \)$, garantindo que a resposta
válida apenas para $t gt.eq 0$. Assim, o resultado final é:

$ y \( t \) = t dot.op u \( t \) $ #strong[Intuição];:

+ A convolução de dois degraus é não nula apenas onde os dois degraus
  estão ativos simultaneamente ($0 lt.eq tau lt.eq t$).
+ Dentro desse intervalo, ambos $u \( tau \)$ e $u \( t - tau \)$ valem
  1, simplificando a integral para $integral_0^t 1 d tau$.
+ Resolver a integral fornece $t$, e multiplicar $u \( t \)$ garante que
  a resposta seja válida apenas para $t gt.eq 0$.

$ u \( t \) \* u \( t \) = t dot.op u \( t \) $

== Atividades

=== Atividade 5
#showybox(
  title: [
    #fa-icon("question", solid: true) Enunciado 
    #note[
      #text(fill: black)[
        Atividade 05 passada pelo professor Jugurta no período 2024.1
      ]
    ]
  ],
  frame: (
    border-color: rgb("#BB3E00"),
    title-color: rgb("#BB3E00").lighten(30%),
    body-color: rgb("#BB3E00").lighten(95%)
  )
)[
  Encontrar as seguintes convoluções
  #block[
    #set enum(numbering: "a)", start: 1)
    + $x \( t \) = delta \( t \) - 0.1 delta \( t - 1 \)$ \
      $h \( t \) = u \( t \) - u \( t - 0.5 \)$
  ]
  
  #block[
    #set enum(numbering: "a)", start: 2)
    + $x \( t \) = u \( t \) - u \( t - 1 \)$ \
      $h \( t \) = u \( t \) - u \( t - 0.5 \)$
  ]

  #image("../img/WhatsApp Image 2025-01-15 at 12.29.34.jpeg", width: 50%)

]

*Resposta*

_1º Convolução_

Essa convolução é a combinação de dois sinais, onde o sinal $x \( t \)$
é composto por dois impulsos, caracterizando-o como um trem de impulsos,
onde temos: - $delta \( t \) arrow.r$ Um impulso unitário no tempo
$t = 0$ - $- 0.1 delta \( t - 1 \) arrow.r$ Um impulso de amplitude
$- 0.1$ localizado em $t = 1$

#image("../img/Pasted image 20250127221800.png")

Sendo o sinal $x \( t \)$ convolvido com a resposta ao impulso dado por
uma "função janela" $h \( t \)$. Esse sinal representa uma janela de
ativação iniciada em $t = 0$ e desativada em $t = 0.5$.

A função $h \( t \)$ representa um #strong[pulso] de largura $0.5$ que é
iniciado quando tempo $t = 0$ e é finalizado quando o tempo $t = 0.5$,
sendo zero em outros intervalos de tempo, geralmente usada para modelar
um comportamento que ocorre entre esses dois instantes.

#image("../img/Pasted image 20250127221717.png")

Para determinar a convolução $y \( t \) = x \( t \) \* h \( t \)$,
usaremos de suas propriedades.

A convolução é definida como:

$ y \( t \) = integral_(- oo)^oo x \( tau \) dot.op h \( t - tau \) d tau $

Onde temos os dois sinais que serão convolvidos:

$ x \( t \) = delta \( t \) - 0.1 delta \( t - 1 \) $
$ h \( t \) = u \( t \) - u \( t - 0.5 \) $

E sabemos, que o impulso é a identidade da convolução, portanto a
convolução de um sinal com um impulso, retorna o próprio sinal, e a
convolução de um sinal com #strong[um #emph[impulso] deslocado no
tempo];, retorna #strong[o #emph[sinal] deslocado no tempo];. 1.
$delta \( t \) \* h \( t \) = h \( t \)$ 2.
$delta \( t - T \) \* h \( t \) = h \( t - T \)$

Portanto podemos separar os termos dos sinais, e utilizando a
propriedade distributiva da convolução, podemos realizar as operações
individualmente:

$ y \( t \) = \[ delta \( t \) - 0.1 delta \( t - 1 \) \] \* \[ u \( t \) - u \( t - 0.5 \) \] $

Distribuindo temos: 1.
$delta \( t \) \* \[ u \( t \) - u \( t - 0.5 \) \]$ 2.
$- 0.1 delta \( t - 1 \) \* \[ u \( t \) - u \( t - 0.5 \) \]$

$ y \( t \) = delta \( t \) \* \[ u \( t \) - u \( t - 0.5 \) \] - 0.1 delta \( t - T \) \* \[ u \( t \) - u \( t - 0.5 \) \] $

#strong[Primeiro Termo];:
$delta \( t \) \* \[ u \( t \) - u \( t - 0.5 \) \]$

Convoluir $delta \( t \)$ com $u \( t \) - u \( t - 0.5 \)$ resulta na
própria função $u \( t \) - u \( t - 0.5 \)$, já que
$delta \( t \) \* h \( t \) = h \( t \)$:

$ delta \( t \) \* \[ u \( t \) - u \( t - 0.5 \) \] = u \( t \) - u \( t - 0.5 \) $
#strong[Segundo Termo];:
$- 0.1 delta \( t - 1 \) \* \[ u \( t \) - u \( t - 0.5 \) \]$

Convoluir $delta \( t - 1 \)$ com $u \( t \) - u \( t - 0.5 \)$ resulta
na função original, deslocada $T = 1$ no tempo:

$ delta \( t - 1 \) \* \[ u \( t \) - u \( t - 0.5 \) \] = u \( t - 1 \) - u \( t - 1 - 0.5 \) $
$ = u \( t - 1 \) - u \( t - 1.5 \) $
$ = - 0.1 \[ u \( t - 1 \) - u \( t - 1.5 \) \] $ #strong[Soma dos
resultados]

Agora somamos o primeiro e o segundo termo para encontrar $y \( t \)$

$ y \( t \) = \[ u \( t \) - u \( t - 0.5 \) \] - 0.1 \[ u \( t - 1 \) - u \( t - 1.5 \) \] $

#block[
ou
]
$ y \( t \) = u \( t \) - u \( t - 0.5 \) - 0.1 u \( t - 1 \) + 0.1 u \( t - 1.5 \) $

Onde podemos reorganizar a função janela gerada pela convolução e
obteremos:

$ y \( t \) = {1 \, 0 lt.eq t < 0.5\
- 0.1 \, 1 lt.eq t < 1.5\
0 \, upright("outros casos") $

#image("../img/Pasted image 20250127220955.png")

Uma outra maneira de visualizar essa operação, é que como $x \( t \)$
contém impulsos $delta \( t \)$, a convolução pode ser interpretada como
#strong[cópias escaladas de $h \( t \)$];:

$ y \( t \) = h \( t \) - 0.1 h \( t - 1 \) $

Ou seja, $h \( t \)$ aparece em $t = 0$ e uma versão atenuada aparece em
$t = 1$.

_2º Convolução_

Essa convolução parte do princípio que estamos combinando duas janelas.
Os sinais a serem convolvidos são ambos janelas, ou seja, expressões que
representam a abertura e fechamento de um degrau.

$ x \( t \) = u \( t \) - u \( t - 1 \) $
$ h \( t \) = u \( t \) - u \( t - 0.5 \) $

Sendo assim, para combinar esses dois sinais a partir da convolução:

$ y \( t \) = x \( t \) \* h \( t \) $

Para isso, podemos expandir a expressão como:

#image("../img/analise-tarefa-05-01.png")

=== Atividade 6

#showybox(
  title: [
    #fa-icon("question", solid: true) Enunciado 
    #note[
      #text(fill: black)[
        Atividade 06 passada pelo professor Jugurta no período 2024.1
      ]
    ]
  ],
  frame: (
    border-color: rgb("#BB3E00"),
    title-color: rgb("#BB3E00").lighten(30%),
    body-color: rgb("#BB3E00").lighten(95%)
  )
)[
  a) Simplificar os sistemas
  b) Mostrar a determinação do ganho

  #image("../img/WhatsApp Image 2025-01-17 at 12.31.32.jpeg", width: 70%)
]

=== Atividade 7

#showybox(
  title: [
    #fa-icon("question", solid: true) Enunciado 
    #note[
      #text(fill: black)[
        Atividade 07 passada pelo professor Jugurta no período 2024.1
      ]
    ]
  ],
  frame: (
    border-color: rgb("#BB3E00"),
    title-color: rgb("#BB3E00").lighten(30%),
    body-color: rgb("#BB3E00").lighten(95%)
  )
)[
  Encontrar a resposta do sistema representado para $h \( t \)$ quando o sinal de entrada é:

  + Para $h \( t \) = e^(- t) u \( t \)$ e $x \( t \) = 2 e^(1 \/ 2 t)$
  + Para $h \( t \) = e^(- t) u \( t \)$ e
    $x \( t \) = 3 e^(\( - 1 + j \) t)$
]

