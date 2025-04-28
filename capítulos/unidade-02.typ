#import "@preview/marginalia:0.1.3" as marginalia: note, wideblock
#import "@preview/showybox:2.0.4": showybox
#import "@preview/fontawesome:0.5.0": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge

= Transformada de Fourier

Podemos analisar sistemas lineares por diversas formas em função da propriedade da linearidade, como descrito na \[\[Análise - Classificação de sistemas|classificação de sistemas\]\] para sistemas lineares, são satisfeitas duas propriedades:

#showybox(
  title: [#fa-icon("book", solid: true) Definição],
  frame: (
    border-color: rgb("#df1ba1"),
    title-color: rgb("#df1ba1").lighten(30%),
    body-color: rgb("#df1ba1").lighten(95%)
  )
)[
  Aditividade A propriedade aditiva determina que caso tenhamos duas entradas diferentes $x_1$ e $x_2$, teremos então duas saídas $y_1$ e $y_2$.

  Então pela propriedade, a soma das entradas resulta na soma das saídas:

  $ x_1 + x_2 arrow.r y_1 + y_2 $
]

#showybox(
  title: [#fa-icon("book", solid: true) Definição],
  frame: (
    border-color: rgb("#df1ba1"),
    title-color: rgb("#df1ba1").lighten(30%),
    body-color: rgb("#df1ba1").lighten(95%)
  )
)[
  Homogeneidade A homogeneidade diz que para qualquer valor de $k$ (real ou imaginário), caso a entrada aumentar $k$ vezes, a saída também deve aumentar $k$ vezes.

  $ x arrow.r y $ $ k x arrow.r k y $
]

Sendo assim, de forma resumida, a entrada de um sistema linear pode ser expresso como a soma de componentes mais simples.

Para sinais periódicos, foi visto que é possível representá-los através da série de fourier como a soma de senóides ou exponenciais eternas na forma de $e^(j omega t)$.

A Integral de Fourier estende essa representação espectral para sinais #strong[não periódicos];.

== Representação de sinais não periódicos pela Integral de Fourier

Aplicando um processo de limite, é possível descrever um #strong[sinal não periódico] $x \( t \)$, pela soma contínua (integral) de exponenciais de duração infinita.

Para realizar essa representação, é preciso construir um novo sinal periódico denominado de $x_(T_0) \( t \)$ que é formado pela repetição do sinal original $x \( t \)$ em intervalos de $T_0$ segundos.

O perído $T_0$ é feito para que seja grande o suficiente para evitar sobreposição de pulsos seguidos.

Sendo assim, o sinal $x_(T_0) \( t \)$ pode ser representado por uma série exponencial de Fourier, e se fizermos o período dessa função tender ao infinito ($T_0 arrow.r oo$), os pulsos no sinal periódico irão se repetir após um intervalo infinito.

$ lim_(T_0 arrow.r oo) x_(T_0) \( t \) = x \( t \) $

== Atividades

=== Atividade 8

#showybox(
  title: [
    #fa-icon("question", solid: true) Enunciado 
    #note[
      #text(fill: black)[
        Atividade 09 passada pelo professor Jugurta no período 2024.1
      ]
    ]
  ],
  frame: (
    border-color: rgb("#BB3E00"),
    title-color: rgb("#BB3E00").lighten(30%),
    body-color: rgb("#BB3E00").lighten(95%)
  )
)[
  + $< c o s \( 6 pi t \) \, s e n \( 6 pi t \) >$
  + $< c o s \( 6 pi t \) \, c o s \( 7 pi t \) >$
]

=== Atividade 9

#showybox(
  title: [
    #fa-icon("question", solid: true) Enunciado 
    #note[
      #text(fill: black)[
        Atividade 10 passada pelo professor Jugurta no período 2024.1
      ]
    ]
  ],
  frame: (
    border-color: rgb("#BB3E00"),
    title-color: rgb("#BB3E00").lighten(30%),
    body-color: rgb("#BB3E00").lighten(95%)
  )
)[
 Encontrar a serie de fourier para o sinal
 
 #image("../img/20250207_123527.jpg")
]

=== Atividade 10

#showybox(
  title: [
    #fa-icon("question", solid: true) Enunciado 
    #note[
      #text(fill: black)[
        Atividade 11 passada pelo professor Jugurta no período 2024.1
      ]
    ]
  ],
  frame: (
    border-color: rgb("#BB3E00"),
    title-color: rgb("#BB3E00").lighten(30%),
    body-color: rgb("#BB3E00").lighten(95%)
  )
)[
Encontrar a série exponencial de Fourier dos sinais:
 
#image("../img/20250212_123712 1.jpg", width: 70%)
]

=== Atividade 11

#showybox(
  title: [
    #fa-icon("question", solid: true) Enunciado 
    #note[
      #text(fill: black)[
        Atividade 12 passada pelo professor Jugurta no período 2024.1
      ]
    ]
  ],
  frame: (
    border-color: rgb("#BB3E00"),
    title-color: rgb("#BB3E00").lighten(30%),
    body-color: rgb("#BB3E00").lighten(95%)
  )
)[
  Encontrar a transformada de Fourier dos sinais:

  a) $x \( t \) = delta \( t \)$ 

  b) $x \( t \) = e^(alpha t) u \( t \)$

  c) $x \( t \) = u \( t + A \) - u \( t - A \)$

  #image("../img/20250214_123927.jpg")
]

=== Atividade 12

#showybox(
  title: [
    #fa-icon("question", solid: true) Enunciado 
    #note[
      #text(fill: black)[
        Atividade 13 passada pelo professor Jugurta no período 2024.1
      ]
    ]
  ],
  frame: (
    border-color: rgb("#BB3E00"),
    title-color: rgb("#BB3E00").lighten(30%),
    body-color: rgb("#BB3E00").lighten(95%)
  )
)[
  + Desenhar a função $2 A dot.op upright("sinc") \( omega A \)$

  + $X \( t \)$ possui mais de qual exponencial: $e^(1 j omega t)$ ou $e^(2 j omega t)$ ?

  + Quais exponenciais eternas não fazem parte de $X \( t \)$

  #image("../img/20250219_123710.jpg", width: 70%)
]

=== Atividade 12

#showybox(
  title: [
    #fa-icon("question", solid: true) Enunciado 
    #note[
      #text(fill: black)[
        Atividade 13 passada pelo professor Jugurta no período 2024.1
      ]
    ]
  ],
  frame: (
    border-color: rgb("#BB3E00"),
    title-color: rgb("#BB3E00").lighten(30%),
    body-color: rgb("#BB3E00").lighten(95%)
  )
)[
  + Desenhar a função $2 A dot.op upright("sinc") \( omega A \)$

  + $X \( t \)$ possui mais de qual exponencial: $e^(1 j omega t)$ ou $e^(2 j omega t)$ ?

  + Quais exponenciais eternas não fazem parte de $X \( t \)$

  #image("../img/20250219_123710.jpg", width: 60%)
]

=== Atividade 13

#showybox(
  title: [
    #fa-icon("question", solid: true) Enunciado 
    #note[
      #text(fill: black)[
        Atividade 14 passada pelo professor Jugurta no período 2024.1
      ]
    ]
  ],
  frame: (
    border-color: rgb("#BB3E00"),
    title-color: rgb("#BB3E00").lighten(30%),
    body-color: rgb("#BB3E00").lighten(95%)
  )
)[
  Se um sistema Linear cuja resposta ao impulso é $h \( t \) = e^(- 5 t) u \( t \)$

  + Qual será a saída desse sistema se sua entrada for $x \( t \) = c o s \( 3000 t \)$ ? ?
  + Como você pode usar a transformada de Fourier para responder 

  #grid(
    columns: 2,
    gutter: 3pt,
    image("../img/20250221_122821.jpg"),
    image("../img/20250221_122536.jpg")
  )

]

=== Atividade 14

#showybox(
  title: [
    #fa-icon("question", solid: true) Enunciado 
    #note[
      #text(fill: black)[
        Atividade 15 passada pelo professor Jugurta no período 2024.1
      ]
    ]
  ],
  frame: (
    border-color: rgb("#BB3E00"),
    title-color: rgb("#BB3E00").lighten(30%),
    body-color: rgb("#BB3E00").lighten(95%)
  )
)[
  Encontrar a Transformada de Fourier do Degrau unitário 
  
  #strong[Sugestão]: Considere que

  $ u \( t \) = 1 / 2 \( upright(s i g n) \( t \) + 1 \) $ 
  
  E use a linearidade da transformada.

  #image("../img/20250226_122848.jpg")
]

= Transformada de Laplace

A resposta de um sistema no domínio do tempo é determinada analisando como ela reage a diferentes entradas ao longo do tempo.

Em sistemas lineares invariantes no tempo, uma maneira fundamental de encontrar essa resposta é usando a #strong[convolução];.

Essa sendo uma operação matemática que #strong[combina dois sinais] para produzir um terceiro sinal.

No contexto de sistemas LIT (Lineares Invariantes no Tempo), a convolução entre a entrada $x \( t \)$ e a resposta ao impulso do sistema $h \( t \)$ nos dá uma saída $y \( t \)$.

A fórmula da convolução é:

$ y \( t \) = integral_(- oo)^oo x \( tau \) h \( t - tau \) d tau $

Isso significa que a saída do sistema em um determinado instante $t$ é obtida somando todas as contribuições da entrada $x \( t \)$ ponderadas pela resposta ao impulso $h \( t \)$, deslocada no tempo.

Como descrito nas definições da convolução, a resposta ao impulso $h \( t \)$ é simplesmente a maneira como um sistema reage quando recebe uma entrada muito curta e intensa: o impulso dirac $delta \( t \)$.

E como sabemos, sistemas lineares têm a propriedade da superposição, ou seja, se a entrada for comporta por várias partes, a resposta total do sistema será a soma das respostas individuais dessas partes.

Isso significa que podemos dividir um sinal de entrada $x \( t \)$ em componentes menores, calcular a resposta do sistema para cada uma e depois somá-las.

No #strong[domínio do tempo];, essa decomposição pode ser feita usando impulsos. Isso leva ao conceito de resposta ao impulso do sistema, que permite encontrar a saída para qualquer entrada via convolução.

No #strong[domínio da frequência];, ao invés de decompor $x \( t \)$ em impulsos, decompomos o sinal em funções exponenciais da forma $e^(s t)$, onde $s$ é um número complexo. Essa ideia está relacionada à análise de Fourier e Laplace.

Assim como a série de Fourier decompõe sinais periódicos em somas de senos e cossenos, a #strong[Transformada de Laplace] decompõe qualquer sinal em exponenciais complexas.

Essas funções exponenciais $e^(s t)$ são importantes porque, em sistemas lineares, elas se comportam de maneira simples: a resposta a uma entrada exponencial, é outra exponencial multiplicada por um fator, o que facilita muito a análise do sistema.

Dessa forma a Transformada de Laplace permite estudar sistemas LIT de um jeito mais simples e visual, focando no comportamento de suas frequências.

Para um sinal $x \( t \)$, a transformada de Laplace $X \( s \)$ é definda por:

$ X \( s \) = integral_(- oo)^oo x \( t \) e^(- s t) d t $

O sinal $x \( t \)$ é dito ser a #emph[transformada inversa de Laplace de] $X \( s \)$:

$ x \( t \) = frac(1, 2 pi j) integral_(c - j oo)^(c + j oo) X \( s \) e^(s t) d s $

Onde $c$ é uma constante escolhida para garantir a convergência da integral.

Essas duas equações são conhecidas como #emph[par da transformada de Laplace bilateral];, no qual $X \( s \)$ é a transformada direta de $x \( t \)$ e $x \( t \)$ é a transformada inversa de Laplace de $X \( s \)$.

A transformada de Laplace definida dessa forma, pode trabalhar com sinais que existem em todo o intervalo de tempo, de $- oo$ até $oo$ (sinais causais e não causais). Por essa razão ela é chamada de bilateral.

== Linearidade

A operação da Transformada de Laplace é uma operação linear, sendo possível aplicar o princípio da superposição.

Por exemplo, sabendo que:

$ x_1 \( t \) arrow.l.r.double X_1 \( s \) $ $ x_2 \( t \) arrow.l.r.double X_2 \( s \) $

Então de acordo com a superposição:

$ a_1 x_1 \( t \) + a_2 x_2 \( t \) arrow.l.r.double a_1 X_1 \( s \) + a_2 X_2 \( s \) $

Podemos provar esse fator, realizando a transformada desses termos e verificando o que acontece.

#image("../img/analise-laplace-01.png")

Seguindo as propriedades da própria integral, temos que a integral da soma de duas funções é igual a soma das integrais das funções individualmente.

#image("../img/analise-laplace-02.png")

As integrais sendo realizadas, são ambas seguindo o formato da transformada de laplace, portanto está provado que a transformada de Laplace da soma de quaisquer duas funções $x_n \( t \)$ escalados por um fator $a_n$ é igual a transformada de cada uma dessas funções separadamente.

#image("../img/analise-laplace-03.png")

Esse resultado pode ser estendido a qualquer soma finita.

== Região de convergência.

A #emph[região de convergência] (RDC), também chamada de região de existência, da transformada de Laplace $X \( s \)$ é o conjunto de valores de $s$ (a região do plano complexo) para os quais a integral $\( 1 \)$ converge.

Vamos demonstrar a região de convergência a partir da resolução de um exemplo. \#\#\# Exemplo

#showybox(
  title: [#fa-icon("question", solid: true) Enunciado],
  frame: (
    border-color: rgb("#BB3E00"),
    title-color: rgb("#BB3E00").lighten(30%),
    body-color: rgb("#BB3E00").lighten(95%)
  )
)[
  Para um sinal $x \( t \) = e^(- a t) u \( t \)$, determine a Transformada de Laplace $X \( s \)$ e sua RDC(Região de convergência). 
  
  #image("../img/analise-laplace-convergencia-01.png")
]

Pela definição nós temos a transformada de Laplace do sinal de entrada e como temos um degrau presente, sabemos que $u \( t \) = 1$ quando $t gt.eq 0$, portanto, essa é a janela que nos importa, ou seja, não precisamos integrar quando a função é igual a 0, então ajustamos o intervalo de integração para integrar apenas para valores diferentes de zero.

#image("../img/analise-laplace-convergencia-02.png")

A integral agora tem um novo intervalo de $\[ 0 \, oo \]$ e como temos uma multiplicação de exponenciais, podemos juntar ambas em apenas um termo, pela propriedada de potências, $e^(- a t) e^(- s t) = e^(- \( s + a \) t)$.

#image("../img/analise-laplace-convergencia-03.png")

Resolvendo a integral definida, usamos a propriedade da integral da exponencial $integral e^(a x) d x = 1 / a e^(a x)$.

#image("../img/analise-laplace-convergencia-04.png")

Resolvendo, temos que a expressão elevada a 0, se simplifica e a exponencial desaparece. A única parte que precisamos nos preocupar agora é com o comportamento da parte elevada ao infinito.

#image("../img/analise-laplace-convergencia-05.png")

Como nessa expressão temos que o $s$ é uma variável complexa dada por $s = alpha + j beta$, temos que verificar as condições pra quando o termo exponencial se torna zero.

#image("../img/analise-laplace-convergencia-06.png")

Podemos expandir, o número complexo e fazer a distribuição dos termos. Temos agora um produto entre $e^(- alpha dot.op oo) \, alpha in bb(R)$ e $e^(- j beta dot.op oo)$. Nós sabemos que o termo $e^(- j beta dot.op oo)$ pode ser visto como a soma de um cosseno e um seno, e o módulo desse termo é $1$, ou seja ele, esse é um termo que não tende a 0, apenas continua oscilando eternamente.

O importante para nós analisarmos é o comportamento da parte real do número complexo, $e^(- alpha dot.op oo)$, porque dependendo do seu comportamento, teremos respostas totalmente diferentes.

#image("../img/analise-laplace-convergencia-07.png")

Como pode ser visto, para diferentes valores de $alpha$ temos diferentes valores para a exponencial.

- Quando $alpha < 0$ isso faz com que a exponencial tenda a infinito, isso faz a integral #strong[divergir] e não faz sentido físico. $e^(- \( - alpha \) dot.op oo) = e^(+ oo) = oo arrow.r frac(oo, s + a)$.
- Quando $alpha = 0$ a exponencial se torna $1$, isso é um valor válido para nós. $e^(- 0 dot.op oo) = e^0 = 1 arrow.r frac(1, s + a)$.
- Quando $alpha > 0$ a exponencial tende a 0, por estar elevada a $- oo$. $e^(- alpha dot.op oo) = e^(- oo) = 1 / e^oo = 1 / oo = 0 arrow.r frac(0, s + a)$.

Portanto, o que chamamos de região de convergência, é a região no plano complexo que o número complexo $s$ esteja, para que a integral converja. Nesse caso para valores de $alpha$ menores que 0, a integral diverge.

#image("../img/analise-laplace-convergencia-08.png")

Temos assim que a Transformada de Laplace do sinal $x \( t \) = e^(- a t) u \( t \)$ é $X \( s \) = frac(1, s + a)$ em que sua Região de Convergência (RDC) é $R e \( s + a \) > 0$.

#image("../img/analise-laplace-convergencia-09.png")

A Região de Convergência é $R e \( s + a \)$ pois na integral de laplace o termo que temos é $e^(- \( s + a \) t)$, então estamos somando a parte real do número complexo $alpha$ com o número real $a$, então precisamos garantir que essa soma seja um número positivo, por isso $R e \( s + a \)$.

== Propriedades

=== Diferenciação no Tempo

#showybox(
  title: [#fa-icon("book", solid: true) Definição],
  frame: (
    border-color: rgb("#df1ba1"),
    title-color: rgb("#df1ba1").lighten(30%),
    body-color: rgb("#df1ba1").lighten(95%)
  )
)[
  A propriedade de diferenciação no tempo afirma que: $ x \( t \) arrow.l.r.double X \( s \) $ então $ frac(d x, d t) arrow.l.r.double s X \( s \) - x \( 0^(-) \) $ A aplicação repetida dessa propriedade resulta em $ frac(d^2 x, d t^2) arrow.l.r.double s^2 X \( s \) - s x \( 0^(-) \) - dot(x) \( 0^(-) \) $
]

A dual da propriedade de diferenciação no tempo é a propriedade de diferenciação na frequência, que afirma:

$ t x \( t \) arrow.l.r.double - frac(d, d s) X \( s \) $

A prova da transformada de Laplace na diferenciação no tempo é dada por

$ cal(L) [frac(d x, d t)] = integral_(0^(-))^oo frac(d x, d t) e^(- s t) d t $

Onde temos a transformada de laplace aplicada para uma derivada de um certo sinal $x \( t \)$.

A integral da Transformada de Laplace para a derivada começa em $0^(-)$ (ou seja, imediatamente antes de $t = 0$) está relacionada às propriedades dos sinais e a necessidade de capturar corretamente o comportamento inicial de $x \( t \)$.

A transformada de laplace unilateral, que é mais usada em análise de sistemas físicos, só considera valores $x \( t \)$ para $t gt.eq 0$. Portanto, a integral normalmente começaria em $t = 0$

$ cal(L) [frac(d x, d t)] = integral_0^oo frac(d x, d t) e^(- s t) d t $

Porém, se houver uma descontinuidade ou um salto em $x \( t \)$ exatamente em $t = 0$, a derivada $frac(d x, d t)$ pode conter um #strong[impulso dirac] $delta \( t \)$. Para incluir corretamente esse comportamento do sinal, a integral deve considerar #strong[valores imediatemente antes de $t = 0$];, ou seja, $0^(-)$.

A integral da Transformada de Laplace aplicada a uma diferenciação temporal, pode ser resolvida pela técnica da integração por partes, dada por

$ integral u med d v = u dot.op v - integral v med d u $

Onde podemos determinar:

$  u = e^(- s t) arrow.r  d u = - s e^(- s t) med d t $ $  d v = frac(d x, d t) med d t arrow.r  v = x \( t \) $

O termo diferencial $frac(d x, d t) d t$, quando aplicada a uma integral, apenas indica que temos a taxa de variação de $x$ ao longo do tempo $t$, sendo integrada ao longo do tempo $t$.

$ integral frac(d x, d t) med d t arrow.l.r.double integral x' \( t \) med d t = x \( t \) $

Sendo assim, aplicando na fórmula de solução da integração por partes

$ u dot.op v - integral v med d u $ $ e^(- s t) dot.op x \( t \) - integral_(0^(-))^oo x \( t \) dot.op \( - s e^(- s t) \) med d t $

Onde extraímos da integral a constante $- s$ que multiplica $ d u$ e teremos

$ \[ e^(- s t) dot.op x \( t \) \]_(0^(-))^oo + s integral_(0^(-))^oo x \( t \) dot.op e^(- s t) med d t $

Analisando o primeiro termo, $u dot.op v$, na integração

$ \[ e^(- s t) dot.op x \( t \) \]_(0^(-))^( oo) $ $ lim_(t arrow.r  oo) x \( t \) e^(- s t) quad - quad x \( 0^(-) \) e^(- s \( 0^(-) \)) $

Para $t arrow.r oo$, é importante analisarmos o comportamento da expressão que temos $x \( t \) e^(- s t)$, pois é crucial para determinar a #strong[Região de Convergência] da transformada.

Para que a integral da Transformada de Laplace converja, ela precisa ser #strong[finita];, ou seja, não pode divergir para infinito. Isso significa que o termo $x \( t \) e^(- s t)$ deve tender a $0$ a medida que $t arrow.r oo$.

A convergência da integral depende de dois fatores:

- O crescimento de $x \( t \)$ quando $t arrow.r oo$
- O termo de amortecimento $e^(- s t)$

Se $x \( t \)$ crescer muito rápido, o termo $e^(- s t)$ precisa ser forte o suficiente para compensar o crescimento e garantir que a integral permaneça finita.

Então supomos que $integral_(0^(-))^( oo) x \( t \) e^(- s t)$ não diverge para infinito, ou seja, é finita, então para valores de $s$ dentro da Região de Convergência da Transformada de Laplace temos que

$ lim_(t arrow.r  oo) x \( t \) e^(- s t) = 0 $ $ x \( oo \) dot.op e^(- s dot.op oo) arrow.r x \( oo \) dot.op e^(- oo) arrow.r x \( oo \) dot.op 1 / e^oo arrow.r x \( oo \) dot.op 0 = 0 $

Essa condição é necessária para que a Transformada de Laplace #strong[exista];.

Para $t arrow.r 0^(-)$, esse termo $0^(-)$ apenas indica que estamos avaliando o valor imediatamente antes de $t = 0$. Esse conceito é importante porque, em sistemas de controle e sinais, podemos ter descontinuidades no tempo $t = 0$, e precisamos distinguir o comportamento da função antes e depois desse instante.

Se a função for contínua em $t = 0$, então:

$ x \( 0^(-) \) = x \( 0^(+) \) $

Mas se houver um salto, então $x \( 0^(-) \) eq.not x \( 0^(+) \)$, e a diferença $x \( 0^(+) \) - x \( 0^(-) \)$ define a magnitude do salto.

Na Transformada de Laplace, ao usar a #strong[propriedade de diferenciação no tempo];, temos:

$ cal(L) [frac(d x, d t)] = s X \( s \) - x \( 0^(-) \) $

Isso significa que o termo $x \( 0^(-) \)$ contribui como um valor inicial da transformada. Se houver uma descontinuidade em $t = 0$, essa contribuição afeta a resposta de $X \( s \)$.

Quando calculamos o termo $e^(- s \( 0^(-) \))$, estamos essencialmente avaliando:

$ e^(- s \( 0^(-) \)) = e^0 = 1 $

Isso porque $0^(-)$ ocorre infinitesimamente próximo de $0$, então $s dot.op 0^(-)$ também tende a $0$.

Sabemos que

$ e^0 = 1 $

Portanto, na prática $e^(- s \( 0^(-) \))$ #strong[sempre será igual a 1];, independente do valor de $s$.

== Atividades 

=== Atividade 15

#showybox(
  title: [
    #fa-icon("question", solid: true) Enunciado 
    #note[
      #text(fill: black)[
        Atividade 16 passada pelo professor Jugurta no período 2024.1
      ]
    ]
  ],
  frame: (
    border-color: rgb("#BB3E00"),
    title-color: rgb("#BB3E00").lighten(30%),
    body-color: rgb("#BB3E00").lighten(95%)
  )
)[
  Determine a transformada de Laplace do sinal $e^(-alpha t)cos(w dot t)u(t)$

  #image("../img/20250228_123430.jpg")
]

*Resposta*

Montando a Integral da Transformada de Laplace de $x \( t \) = e^(- a t) c o s \( w dot.op t \) u \( t \)$ temos:

#image("../img/Pasted image 20250307005110.png")

Simplificamos os expoentes da exponencial para obter um único termo. A partir disso, solucionamos a integral utilizando a regra de Integração por Partes.

Quando montamos a solução, acabamos obtendo na parte da integral $integral v dot.op d u$ a integral que forma a Transformada de Laplace de $x \( t \) = e^(- a t) s e n \( w dot.op t \) u \( t \)$, podemos então substituir pela sua expressão na tabela das transformadas.

#image("../img/Pasted image 20250307001050.png")

Resolvendo a solução com os limites de integração, temos que para $t arrow.r oo$, toda a expressão some e se torna $0$.

#image("../img/Pasted image 20250307001058.png")

Como o termo crítico para a convergência da integral é $e^(- \( s + a \) t)$, temos que a Região de Convergência é dada por:

#image("../img/Pasted image 20250307002538.png")