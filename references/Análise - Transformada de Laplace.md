## Descrição

A resposta de um sistema no domínio do tempo é determinada analisando como ela reage a diferentes entradas ao longo do tempo. 

Em sistemas lineares invariantes no tempo, uma maneira fundamental de encontrar essa resposta é usando a **convolução**.

Essa sendo uma operação matemática que **combina dois sinais** para produzir um terceiro sinal.

No contexto de sistemas LIT (Lineares Invariantes no Tempo), a convolução entre a entrada $x(t)$ e a resposta ao impulso do sistema $h(t)$ nos dá uma saída $y(t)$.

A fórmula da convolução é:

$$
y(t) =
\int_{-\infty}^{\infty} x(\tau) h(t-\tau) d\tau
$$

Isso significa que a saída do sistema em um determinado instante $t$ é obtida somando todas as contribuições da entrada $x(t)$ ponderadas pela resposta ao impulso $h(t)$, deslocada no tempo.

Como descrito nas [[Análise - Convolução|definições da convolução]], a resposta ao impulso $h(t)$ é simplesmente a maneira como um sistema reage quando recebe uma entrada muito curta e intensa: o impulso dirac $\delta (t)$.

E como sabemos, sistemas lineares têm a propriedade da superposição, ou seja, se a entrada for comporta por várias partes, a resposta total do sistema será a soma das respostas individuais dessas partes.

Isso significa que podemos dividir um sinal de entrada $x(t)$ em componentes menores, calcular a resposta do sistema para cada uma e depois somá-las.

No **domínio do tempo**, essa decomposição pode ser feita usando impulsos. Isso leva ao conceito de resposta ao impulso do sistema, que permite encontrar a saída para qualquer entrada via convolução.

No **domínio da frequência**, ao invés de decompor $x(t)$ em impulsos, decompomos o sinal em funções exponenciais da forma $e^{st}$, onde $s$ é um número complexo. Essa ideia está relacionada à análise de Fourier e Laplace.

Assim como a [[Análise - Série de Fourier|série de Fourier]] decompõe sinais periódicos em somas de senos e cossenos, a **Transformada de Laplace** decompõe qualquer sinal em exponenciais complexas.

Essas funções exponenciais $e^{st}$ são importantes porque, em sistemas lineares, elas se comportam de maneira simples: a resposta a uma entrada exponencial, é outra exponencial multiplicada por um fator, o que facilita muito a análise do sistema.

Dessa forma a Transformada de Laplace permite estudar sistemas LIT de um jeito mais simples e visual, focando no comportamento de suas frequências.

# Transformada de Laplace

Para um sinal $x(t)$, a transformada de Laplace $X(s)$ é definda por:

$$
X(s) = \int_{-\infty}^{\infty} x(t) e^{-st} dt
\tag {1}
$$

O sinal $x(t)$ é dito ser a *transformada inversa de Laplace de* $X(s)$:

$$
x(t) = \frac{1}{2\pi j} \int_{c-j\infty}^{c+ j\infty} X(s) e^{st} ds
\tag{2}
$$

Onde $c$ é uma constante escolhida para garantir a convergência da integral. 

Essas duas equações são conhecidas como *par da transformada de Laplace bilateral*, no qual $X(s)$ é a transformada direta de $x(t)$ e $x(t)$ é a transformada inversa de Laplace de $X(s)$.

A transformada de Laplace definida dessa forma, pode trabalhar com sinais que existem em todo o intervalo de tempo, de $-\infty$ até $\infty$ (sinais causais e não causais). Por essa razão ela é chamada de bilateral.

## Linearidade

A operação da Transformada de Laplace é uma operação linear, sendo possível aplicar o princípio da superposição. 

Por exemplo, sabendo que:

$$x_{1}(t) \Longleftrightarrow X_{1}(s)$$
$$x_{2}(t) \Longleftrightarrow X_{2}(s)$$

Então de acordo com a superposição:

$$a_{1}x_{1}(t) + a_{2}x_{2}(t) \Longleftrightarrow a_{1}X_{1}(s) + a_{2}X_{2}(s)$$

Podemos provar esse fator, realizando a transformada desses termos e verificando o que acontece.

![[analise-laplace-01.png]]

Seguindo as propriedades da própria integral, temos que a integral da soma de duas funções é igual a soma das integrais das funções individualmente.

![[analise-laplace-02.png]]

As integrais sendo realizadas, são ambas seguindo o formato da transformada de laplace, portanto está provado que a transformada de Laplace da soma de quaisquer duas funções $x_{n}(t)$ escalados por um fator $a_{n}$ é igual a transformada de cada uma dessas funções separadamente.

![[analise-laplace-03.png]]

Esse resultado pode ser estendido a qualquer soma finita.

## Região de convergência.

A *região de convergência* (RDC), também chamada de região de existência, da transformada de Laplace $X(s)$ é o conjunto de valores de $s$ (a região do plano complexo) para os quais a integral $(1)$ converge.

Vamos demonstrar a região de convergência a partir da resolução de um exemplo.
### Exemplo 

> [!question] Enunciado
> Para um sinal $x(t) = e^{-at}u(t)$, determine a Transformada de Laplace $X(s)$ e sua RDC(Região de convergência). 
> ![[analise-laplace-convergencia-01.png]]

Pela definição nós temos a transformada de Laplace do sinal de entrada e como temos um degrau presente, sabemos que $u(t)=1$ quando $t \geq 0$, portanto, essa é a janela que nos importa, ou seja, não precisamos integrar quando a função é igual a 0, então ajustamos o intervalo de integração para integrar apenas para valores diferentes de zero.

![[analise-laplace-convergencia-02.png]]

A integral agora tem um novo intervalo de $[0, \infty]$ e como temos uma multiplicação de exponenciais, podemos juntar ambas em apenas um termo, pela propriedada de potências, $e^{-at}e^{-st} = e^{-(s+a)t}$.

![[analise-laplace-convergencia-03.png]]

Resolvendo a integral definida, usamos a propriedade da integral da exponencial $\int e^{ax} dx = \frac{1}{a}e^{ax}$.

![[analise-laplace-convergencia-04.png]]

Resolvendo, temos que a expressão elevada a 0, se simplifica e a exponencial desaparece. A única parte que precisamos nos preocupar agora é com o comportamento da parte elevada ao infinito.

![[analise-laplace-convergencia-05.png]]

Como nessa expressão temos que o $s$ é uma variável complexa dada por $s = \alpha + j\beta$, temos que verificar as condições pra quando o termo exponencial se torna zero.

![[analise-laplace-convergencia-06.png]]

Podemos expandir, o número complexo e fazer a distribuição dos termos. Temos agora um produto entre $e^{-\alpha \cdot \infty}, \alpha \in \mathbb{R}$ e $e^{-j\beta \cdot \infty}$. Nós sabemos que o termo $e^{-j\beta \cdot \infty}$ pode ser visto como a soma de um cosseno e um seno, e o módulo desse termo é $1$, ou seja ele, esse é um termo que não tende a 0, apenas continua oscilando eternamente.

O importante para nós analisarmos é o comportamento da parte real do número complexo, $e^{-\alpha \cdot \infty}$, porque dependendo do seu comportamento, teremos respostas totalmente diferentes.

![[analise-laplace-convergencia-07.png]]

Como pode ser visto, para diferentes valores de $\alpha$ temos diferentes valores para a exponencial. 

- Quando $\alpha \lt 0$ isso faz com que a exponencial tenda a infinito, isso faz a integral **divergir** e não faz sentido físico. $e^{-(-\alpha) \cdot \infty} = e^{+\infty} = \infty \to \frac{\infty}{s+a}$.
- Quando $\alpha = 0$ a exponencial se torna $1$, isso é um valor válido para nós. $e^{-0 \cdot \infty} = e^{0} = 1 \to \frac{1}{s+a}$.
- Quando $\alpha \gt 0$ a exponencial tende a 0, por estar elevada a $-\infty$. $e^{- \alpha \cdot \infty} = e^{-\infty} = \frac{1}{e^{\infty}}= \frac{1}{\infty} = 0 \to \frac{0}{s+a}$.

Portanto, o que chamamos de região de convergência, é a região no plano complexo que o número complexo $s$ esteja, para que a integral converja. Nesse caso para valores de $\alpha$ menores que 0, a integral diverge.

![[analise-laplace-convergencia-08.png]]

Temos assim que a Transformada de Laplace do sinal $x(t) = e^{-at}u(t)$ é $X(s) = \frac{1}{s+a}$ em que sua Região de Convergência (RDC) é $Re(s+a) \gt 0$.

![[analise-laplace-convergencia-09.png]]

A Região de Convergência é $Re(s+a)$ pois na integral de laplace o termo que temos é $e^{-(s+a)t}$, então estamos somando a parte real do número complexo $\alpha$ com o número real $a$, então precisamos garantir que essa soma seja um número positivo, por isso $Re(s+a)$.

## Propriedades

### Diferenciação no Tempo

> [!definition] 
> A propriedade de diferenciação no tempo afirma que:
> $$x(t) \Longleftrightarrow X(s)$$
> então
> $$\frac{dx}{dt} \Longleftrightarrow sX(s) - x(0^{-})$$
> A aplicação repetida dessa propriedade resulta em
> $$\frac{d^{2}x}{dt^{2}} \Longleftrightarrow s^{2}X(s) - sx(0^{-}) - \dot{x}(0^{-})$$

A dual da propriedade de diferenciação no tempo é a propriedade de diferenciação na frequência, que afirma:

$$tx(t) \Longleftrightarrow - \frac{d}{ds}X(s)$$

A prova da transformada de Laplace na diferenciação no tempo é dada por

$$\mathcal{L}\left[\frac{dx}{dt}\right] = \int_{0^{-}}^{\infty} \frac{dx}{dt} e^{-st} dt$$

Onde temos a transformada de laplace aplicada para uma derivada de um certo sinal $x(t)$.

A integral da Transformada de Laplace para a derivada começa em $0^{-}$ (ou seja, imediatamente antes de $t=0$) está relacionada às propriedades dos sinais e a necessidade de capturar corretamente o comportamento inicial de $x(t)$.

A transformada de laplace unilateral, que é mais usada em análise de sistemas físicos, só considera valores $x(t)$ para $t \geq 0$. Portanto, a integral normalmente começaria em $t=0$

$$\mathcal{L}\left[\frac{dx}{dt}\right] = \int_{0}^{\infty} \frac{dx}{dt} e^{-st} dt$$

Porém, se houver uma descontinuidade ou um salto em $x(t)$ exatamente em $t=0$, a derivada $\frac{dx}{dt}$ pode conter um **impulso dirac** $\delta(t)$. Para incluir corretamente esse comportamento do sinal, a integral deve considerar **valores imediatemente antes de $t=0$**, ou seja, $0^{-}$.

A integral da Transformada de Laplace aplicada a uma diferenciação temporal, pode ser resolvida pela técnica da integração por partes, dada por

$$\int u \ dv = u \cdot v - \int v \ du$$

Onde podemos determinar:

$$\textcolor{red}{u} = e^{-st} \to \textcolor{red}{du} = -se^{-st} \ dt$$
$$\textcolor{green}{dv} = \frac{dx}{dt} \ dt \to \textcolor{green}{v} = x(t)$$

O termo diferencial $\frac{dx}{dt}dt$, quando aplicada a uma integral, apenas indica que temos a taxa de variação de $x$ ao longo do tempo $t$, sendo integrada ao longo do tempo $t$. 

$$\int \frac{dx}{dt} \ dt \Longleftrightarrow \int x'(t) \ dt = x(t)$$

Sendo assim, aplicando na fórmula de solução da integração por partes

$$u \cdot v - \int v \ du$$
$$e^{-st} \cdot x(t) - \int_{0^{-}}^{\infty} x(t) \cdot (-se^{-st}) \ dt$$

Onde extraímos da integral a constante $-s$ que multiplica $\textcolor{red}{du}$ e teremos

$$[e^{-st} \cdot x(t)]_{0^{-}}^{\infty}  + s \int_{0^{-}}^{\infty} x(t) \cdot e^{-st} \ dt$$

Analisando o primeiro termo, $u \cdot v$, na integração 

$$[e^{-st} \cdot x(t)]_{\textcolor{purple}{0^{-}}}^{\textcolor{teal}{\infty}}$$
$$\lim_{t \to \textcolor{teal}{\infty}} x(t) e^{-st} \quad - \quad x(\textcolor{purple}{0^{-}})e^{-s(\textcolor{purple}{0^{-}})}$$

Para $t \to \infty$, é importante analisarmos o comportamento da expressão que temos $x(t)e^{-st}$, pois é crucial para determinar a **Região de Convergência** da transformada.

Para que a integral da Transformada de Laplace converja, ela precisa ser **finita**, ou seja, não pode divergir para infinito. Isso significa que o termo $x(t)e^{-st}$ deve tender a $0$ a medida que $t \to \infty$.

A convergência da integral depende de dois fatores:

- O crescimento de $x(t)$ quando $t \to \infty$
- O termo de amortecimento $e^{-st}$

Se $x(t)$ crescer muito rápido, o termo $e^{-st}$ precisa ser forte o suficiente para compensar o crescimento e garantir que a integral permaneça finita.

Então supomos que $\displaystyle \int_{\textcolor{purple}{0^{-}}}^{\textcolor{teal}{\infty}} x(t) e^{-st}$ não diverge para infinito, ou seja, é finita, então para valores de $s$ dentro da Região de Convergência da Transformada de Laplace temos que

$$\lim_{t \to \textcolor{teal}{\infty}} x(t) e^{-st} = 0$$
$$
x(\infty) \cdot e^{-s \cdot \infty} \to
x(\infty) \cdot e^{-\infty} \to
x(\infty) \cdot \frac{1}{e^{\infty}} \to 
x(\infty) \cdot 0 =
0
$$

Essa condição é necessária para que a Transformada de Laplace **exista**.

Para $t \to 0^{-}$, esse termo $0^{-}$ apenas indica que estamos avaliando o valor imediatamente antes de $t=0$. Esse conceito é importante porque, em sistemas de controle e sinais, podemos ter descontinuidades no tempo $t=0$, e precisamos distinguir o comportamento da função antes e depois desse instante.

Se a função for contínua em $t=0$, então:

$$x(0^{-}) = x(0^{+})$$

Mas se houver um salto, então $x(0^{-}) \neq x(0^{+})$, e a diferença $x(0^{+}) - x(0^{-})$ define a magnitude do salto.

Na Transformada de Laplace, ao usar a **propriedade de diferenciação no tempo**, temos:

$$\mathcal{L}\left[\frac{dx}{dt}\right] = sX(s) - x(0^{-})$$

Isso significa que o termo $x(0^-)$ contribui como um valor inicial da transformada. Se houver uma descontinuidade em $t=0$, essa contribuição afeta a resposta de $X(s)$.

Quando calculamos o termo $e^{-s(0^{-})}$, estamos essencialmente avaliando:

$$e^{-s(0^{-})} = e^{0} = 1$$

Isso porque $0^{-}$ ocorre infinitesimamente próximo de $0$, então $s \cdot 0^{-}$ também tende a $0$. 

Sabemos que

$$e^{0} = 1$$

Portanto, na prática $e^{-s(0^{-})}$ **sempre será igual a  1**, independente do valor de $s$.