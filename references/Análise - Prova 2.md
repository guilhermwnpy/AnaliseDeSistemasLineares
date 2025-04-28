## Descrição

2º Prova da matéria de Análise de Sistemas Lineares
Data: 19/03/25

Assuntos:
- Cap 4, 4.1 - 4.2 ( Questões, P.426 )
- Cap 6, 6.1 - 6.7 ( Questões, P.588 )
	- [FOURIER - Série e transformada](https://www.youtube.com/watch?v=n5luJNrV-2I)
- Cap 7, 7.1 - 7.3
- Cap 8, 8.1 - 8.2

Questões:
- 1º $\to$ Encontrar uma série de Fourier Trigonométrica e articular integrais e derivadas
- 2º $\to$ Encontrar uma série de Fourier Exponencial e articular integrais e derivadas
- 3º $\to$ Transformada de Fourier Direta e Interpretação
- 4º $\to$ Laplace, ROC (questões do livro)
- 5º $\to$ Teorema de Amostragem

# Assunto

# Capítulo 4 - Análise de Sistemas em Tempo Contínuo Usando a Transformada de Laplace

## 4.1 Transformada de Laplace

A  transformada de laplace gera uma função de variável $s$ (frequência) a partir de uma função de variável $t$ (tempo) e, vice versa. Ela nos permite representar um sinal $x(t)$ como uma soma de componentes exponenciais da forma $e^{st}$.

A transformada de Laplace é definida como:

![[Pasted image 20250315191200.png]]

onde $s = \sigma + j\omega$, contendo:
- Parte real $\sigma \to$ Define o crescimento ou decaimento exponencial 
- Parte imaginária $j\omega \to$ Define oscilações senoidais

Isso significa que qualquer sinal $x(t)$ pode ser interpretado como sendo composto por exponenciais de diferentes taxas de crescimento e frequências.

A transformada inversa de Laplace, usada para transformar uma função $X(s)$ do domínio da frequência para uma função $x(t)$ do domínio do tempo, é dada por:

![[Pasted image 20250315211914.png]]

onde $c$ é uma constante escolhida para garantir a convergência.

**LINEARIDADE DA TRANSFORMADA**

A linearidade da transformada afirma o mesmo que a linearidade de sistemas lineares.

Tendo dois sinais distintos

![[Pasted image 20250315192330.png]]

A linearidade afirma que 

![[Pasted image 20250315192344.png]]

E isso pode ser provado de maneira simples, apenas aplicando a integral da transformada na expressão dada acima. Pela propriedade linear da integral, podemos reescrever a expressão como uma soma de integrais, o que terá o mesmo resultado.

![[Pasted image 20250315193135.png]]

**REGIÃO DE CONVERGÊNCIA ( RDC/*ROC* )**

A Região de Convergência é o que rege a existência da transformada pare os sinais os quais queremos transformar os domínios.

A Região de convergência é necessária para a determinação da transformada inversa de um sinal, onde queremos trazer uma função no domínio da frequência para o domínio do tempo, onde integramos ao longo de um caminho complexo.

$$x(t) = \frac{1}{2\pi j} \int_{c-j \infty}^{c+j \infty} X(s) e^{st}ds$$
Onde $\omega$ varia de $-\infty$ a $\infty$, além disso o caminho de integração deve estar na região de convergência de $X(s)$.

Tendo por exemplo o sinal $x(t) = e^{-at} \cdot u(t)$:

![[Pasted image 20250316022909.png]]

A Transformada de Laplace do sinal $x(t)$ é dada por

![[Pasted image 20250316022927.png]]

Onde podemos resolver a integral, delimitando os limites de integração e reescrevendo o termo exponencial.

![[Pasted image 20250316022951.png]]

Temos esse o resultado da integral indefinida.

![[Pasted image 20250316023001.png]]

E calculando a diferença para $t \to \infty$ e $t \to 0$, chegamos na seguinte 
expressão, onde consideramos que a parte real de $s$ deve ser maior que $0$ para que a expressão onde $t \to \infty$ tenda a zero. Isso que significa a região de convergência, determinar uma região a qual a solução definida não diverge para infinito. 

Nesse caso precisamos que a parte real do número complexo $s$ na exponenciação $-st \to -(\sigma + j \omega) \cdot \infty \to -\sigma \cdot \infty - j \omega \cdot \infty$, seja maior que $0$, para que a exponencial $e^{-st} \to e^{-\infty}$, ou seja, $e^{-\infty} \to \frac{1}{\infty}= 0$.

![[Pasted image 20250316110703.png]]

**A TRANSFORMADA DE LAPLACE UNILATERAL**

A transformada de Laplace pode ser bilateral ou unilateral, dependendo do tipo de sinal que estamos analisando. 

Chamamos de Transformada de Laplace Bilateral quando analisamos um sinal $x(t)$ para todos os tempos, de $-\infty$ até $\infty$.

$$X(s) = \int_{-\infty}^{\infty} x(t)e^{-st}dt$$

A Transformada de Laplace Unilateral, apenas um caso particular da Bilateral, é quando consideramos apenas um intervalo onde $t \geq 0$, ou seja, apenas sinais causais, eles começam a existir apenas quando o tempo é $t=0$. $x(t)=0, t \lt 0$.

$$X(s) = \int_{0}^{\infty} x(t)e^{-st}dt$$
A razão de considerarmos uma transformada bilateral ou unilateral, é dada pelo fato de considerarmos sinais não causais, ou seja, sinais que existem para $t \lt 0$, pois a transformada de sinais como esse pode não ser única, pois o mesmo $X(s)$ pode vir de diferentes $x(t)$ e, isso depende da região de convergência.

Isso significa que o mesmo $X(s)$ pode ter duas inversas diferentes, dependendo da região de convergência do sinal.

Em alguns casos, o limite inferior da transformada de laplace unilateral é definido como $0^{-}$, onde isso fará com que a integral inicie no instante imediatamente antes de $t=0$.

Isso é essencial em sistemas dinâmicos porque as condições iniciais geralmente são conhecidas **antes da entrada** e, as equações diferenciais que modelam os sistemas físicos precisam dessas condições para serem resolvidas corretamente.

Como já mencionado, para a transformada bilateral, um dado sinal no domínio da frequência $X(s)$ pode ter diferentes inversas $x(t)$ dependendo da região de convergência, mas  para a transformada unilateral, essa ambiguidade desaparece, pois $X(s)$ só terá **uma inversa**.

Em contrapartida, não podemos analisar **sinais não causais** utilizando a transformada unilateral.

Para a transformada unilateral, existe uma única transformada inversa de $X(s)$, consequentemente, não há necessidade de especificar a RDC explicitamente. Por isso geralmente ignoramos qualquer menção de RDC para transformadas unilaterais.

**EXISTÊNCIA DA TRANSFORMADA DE LAPLACE**

A transformada de Laplace sendo definida pela sua integral 

![[Pasted image 20250315191200.png]]

Onde $s$ é um número complexo 

$$s = \sigma + j \omega$$
Sendo assim, podemos expandir o número complexo $s$ e teremos esse termo exponencial

![[Pasted image 20250316015857.png]]

- $e^{-jwt} \to$ representa uma oscilação
- $e^{-\sigma t} \to$ representa o fator de crescimento ou decaimento do sinal ao longo do tempo 

A integral irá convergir somente se a integral:

![[Pasted image 20250316021150.png]]

for finita. Ou seja, **a transformada de laplace existe se o sinal $x(t)$ decai** rápido o suficiente quando multiplicado por $e^{-\sigma t}$.

Sendo assim, temos o que chamamos de **condição de existência**.

$$|x(t)| \leq Me^{\sigma_{0} t}$$

Isso significa que a existência da Transformada de Laplace está garantida se a integral na expressão for finita para algum valor de $\sigma$.

Qualquer sinal que não cresça mais rápido que o sinal exponencial $Me^{\sigma_{0} t}$ para algum $M$ e $\sigma_{0}$ satisfaz a condição de existência.

![[analise-revisao-prova-02-laplace-01.svg]]
Sendo assim, $x(t)$ não pode crescer mais rápido do que uma exponencial de taxa $\sigma_{0}$. Se isso for satisfeito, podemo escolher $\sigma \gt \sigma_{0}$ para garantir que a integral seja finita.

### 4.1-1 Determinando a Transformada Inversa

A transformada de laplace usando sua equação requer a integração no plano complexo, algo que não precisamos no momento. Podemos calcular a transformada inversa de outras maneiras.

Podemos utilizar da tabela da transformada para determinar a transformada inversa. O que precisamos fazer é reescrever $X(s)$ em uma forma que corresponda a funções listadas na tabela.

Na prática, muitas funções $X(s)$ são racionais, essas funções podem ser decompostas em somas de frações parciais.

Tendo como exemplo um sinal no domínio da frequência $X(s)$:

![[Pasted image 20250316131826.png]]
Para calcular a transformada inversa dessa função $X(s)$, podemos usar frações parciais para reescrever essa expressão em um formato conhecido na tabela da transformada.

Analisamos o denominador e achamos sua raiz por bhaskara

![[Pasted image 20250316132042.png]]

Tendo determinado as raízes, conseguimos reescrever o denominador como o produto de duas expressões, a partir desses dois termos se multiplicando, conseguimos separar em 2 frações.

A lógica de frações parciais é separar uma fração em uma soma de frações e calcularmos os coeficientes, nesse caso $A$ e $B$.

![[Pasted image 20250316132248.png]]

Para determinarmos o coeficiente $A$, usamos um método, onde cobrimos o termo da fração original que é o mesmo da fração onde $A$ está.

Tendo a fração $\frac{A}{s+2}$, temos que o denominador é $(s+2)$, o que faremos é "cobrir" esse termo na fração original e substituir $s$ pelo valor que zera $(s+2)$, então teremos uma fração onde teremos o numerador original, onde substituímos $s=-2$, e o denominador é apenas $(s-3)$.

![[Pasted image 20250316134519.png]]

O cálculo para determinar o coeficiente $B$ é o mesmo, mas cobrimos no denominador da fração original o termo $(s-3)$ e substituiremos $s=3$

![[Pasted image 20250316135247.png]]

Temos então que $A=4$ e $B=3$, e assim temos uma soma de frações que agora estão em um formato semelhante ao que temos na tabela de transformadas. 

![[Pasted image 20250316135737.png]]

Podemos aplicar a transfromada inversa nessa soma, e olhando na tabela, o formato padrão que temos, é a transformada da exponencial:

$$X(s) = \frac{1}{s-\lambda}$$
$$\mathcal{L}^{-1}\left[\frac{1}{s-\lambda}\right] = e^{\lambda t} \cdot u(t)$$

Portanto, calculando a transformada inversa da soma de frações que temos, conseguimos calcular a transformada inversa do $X(s)$ dado.

![[Pasted image 20250316135816.png]]

## 4.2 Algumas Propriedades da Transformada de Laplace

### 4.2-1 Deslocamento no Tempo

Como já visto em sistemas lineares, sabemos que sinais podem ser deslocados no tempo.

Por exemplo temos um sinal $x(t)u(t)$ que inicia quando tempo $t$ é $t=0$. Mas podemos deslocar esse sinal no tempo, para atrasá-lo, fazendo com que ele inicie apenas quando $t=t_{0}$.
$$x(t) \to x(t-t_0)$$

Temos por exemplo um $x(t)u(t)$, esse sinal começa quando $t=0$.

Mas podemos ter um sinal atrasado que inicia apenas quando $t=1$. 

$$x(t-1)u(t-1)$$

Essa propriedade está presente para a transformada de Laplace também. Dado um sinal atrasado para $t_{0}$, temos que a transformada desse sinal é $X(s)$ amplificado por um fator $e^{-st_{0}}$.

![[Pasted image 20250316162325.png]]

A prova pode ser feita quando aplicamos o sinal deslocado no tempo na integral da transformada.

![[Pasted image 20250316162512.png]]

Por termos um degrau presente na expressão, o que podemos fazer é uma simples troca de variável para simplificar nossa análise. Subtituímos o termo $t-t_{0}$ por $\tau$.

![[Pasted image 20250316162620.png]]

Aplicamos $\tau$ na equação da transformada e reescrevemos os limites de integração

![[Pasted image 20250316162834.png]]

Ainda temos um degrau presente, mas dessa vez ele faz com que o sinal se inicie quando $\tau = 0$, sendo assim, podemos modificar o intervalo de integração para $[0, \infty]$.

![[Pasted image 20250316162953.png]]

Com isso podemos calcular a integral, primeiramente separando os termos da exponencial e extraindo da integral os termos que não dependem de $\tau$.

![[Pasted image 20250316163117.png]]

Com isso fica claro como a transformada de laplace de um sinal deslocado no tempo em $t_{0}$ segundos significa multiplicar sua transformada por $e^-st_{0}$.

![[Pasted image 20250316163308.png]]

### 4.2-2 Deslocamento na Frequência

A transformada de Laplace tem uma propriedade, para quando há um deslocamento na frequência de um dado sinal $x(t)$.

![[Pasted image 20250316191440.png]]

É possível ver que para um sinal no tempo multiplicado por uma exponencial no formato $e^{at}$, desloca a sua transformada para $(s-a)$.

Isso pode ser visto como uma dualidade da transformada de laplace, já que um deslocamento na frequência é dual a um deslocamento no tempo.

A prova para o deslocamento na frequência é dada quando aplicamos o sinal amplificado pela exponencial na integral da transformada.

![[Pasted image 20250316192352.png]]

Na transformada, podemos reescrever a expressão exponencial, acabamos ficando com um exponencial elevado a $-(s-a)t$. Podemos observar que se fizermos uma substituição de variáveis para $s-a = \lambda$, o formato da integral de laplace é o mesmo que quando temos $\displaystyle \int x(t)e^{-st}dt$, portanto podemos dizer que a transformada de laplace desse termo é $X(\lambda)$, e convertendo $\lambda$ para sua expressão original obtemos assim $X(s-a)$ como a transformada de laplace do sinal multiplicado pela exponencial $e^{at}$.

![[Pasted image 20250316192429.png]]

### 4.2-5 Convolução no Tempo e Convolulção na Frequência

A convolução no tempo é dada quando temos dois sinais no domínio no tempo que são colvolvidos, o que no domínio da frequência resulta em uma multiplicação.

![[Pasted image 20250316202134.png]]

A propriedade da convolução na frequência é dada quando temos dois sinais no domínio do tempo que estão sendo multiplicados, o que resulta em uma convolução no domínio da frequência.

![[Pasted image 20250316202406.png]]

Isso é característica da dualidade da Transformada de Laplace.

Utilizando o conceito de resposta ao impulso, sabemos que $h(t)$ é a resposta ao impulso de um sistema. A função transferência de um sistema LCIT (Sistema Linear em Tempo Contínuo Invariante), é simplesmente a Transformada Bilateral da resposta ao impulso $h(t)$ desse sistema.

![[Pasted image 20250316203248.png]]

Podemos aplicar a propriedade da convolução no tempo na relação $y(t) = x(t) \ast h(t)$ de entrada e saída de um sistema para obter 

![[Pasted image 20250316203511.png]]

A resposta $y(t)$, é a resposta de **estado nulo** do sistema a entrada $x(t)$. A partir da relação $Y(s) = X(s)H(s)$, temos:

![[Pasted image 20250316203923.png]]

# Capítulo 6 - Análise de Sinais no Tempo Contínuo: A Série de Fourier 

As séries de Fourier são usadas para representar sinais periódicos no tempo como uma soma de termos de várias frequências, os quais podem ser somas de **cossenos e senos**, somas de **cossenos** ou somas de **exponenciais**.

Começamos analisando um sinal $y(t)$, que pode representar qualquer coisa, como a voz de uma pessoa, uma onda eletromagnetica, um sinal de radio, etc. Esse sinal é dado por:

$$y(t) = 2sen(t) + sen(5t)$$

![[analise-revisao-prova-02-serie-fourier-03.png]]

Em situações reais, armazenamos sinais como esse e desejamos estudá-lo para realizar alguma tarefa ou análise. Uma maneira de fazer isso é decompor esse sinal em sinais mais fáceis de serem trabalhados.

Podemos ver abaixo dois sinais simples, $x_{1}(t)$ e $x_{2}(t)$, que são fáceis de serem analisados e trabalhados.

Um sinal $x_{1}(t)$ expresso por uma senoide de amplitude $2$ e frequência $1$

$$x_{1}(t) = 2sen(t)$$

![[analise-revisao-prova-02-serie-fourier-01.png]]

Outro sinal $x_{2}(t)$ composto por uma senoide de amplitude $1$ e frequência $5$.

$$x_{2}(t) = sen(5t)$$

![[analise-revisao-prova-02-serie-fourier-02.png]]

Quando somamos esses dois sinais, reconstruímos o sinal $y(t)$ que possui um sinal mais complexo.

Analisando o sinal $y(t)$, esse sinal é nada mais que uma função, onde analisando os eixos horizontal e vertical, temos que é uma função onde a entrada é o tempo e a saída é uma posição.

Uma coisa que podemos fazer, é analisar em outro domínio esse sinal $y(t)$ em termos de frequência e amplitude.

![[analise-revisao-prova-02-serie-fourier-04.png]]

Essa representação é o que chamamos de Espectro de Frequências.

## 6.1 Representação de Sinais Periódicos pela Série Trigonométrica de Fourier

A série de fourier é dada pelo somatório de cossenos e senos de diversas frequências com amplitudes arbitrárias.

$$x(t) = a_{0} + \sum_{n=1}^{\infty} a_{n}cos(n \cdot  \omega_{0} \cdot t) + b_{n} sen(n \cdot \omega_0 \cdot t)$$

A frequência $\omega_{0}$ é chamada de *frequência fundamental*.

**CÁLCULO DOS COEFICIENTES DA SÉRIE DE FOURIER**

Tendo um sinal $x(t)$ periódico real ou complexo, com período $T_{0}$ pode ser expresso como a soma de uma senóide de período $T_{0}$ e suas harmônicas:

$$x(t) = a_{0} + \sum_{n=1}^{\infty} a_{n}cos(n \cdot  \omega_{0} \cdot t) + b_{n} sen(n \cdot \omega_0 \cdot t)$$

Na qual

$$\omega_{0} = 2 \pi f_{0} = \frac{2\pi}{T_{0}}$$

$$a_{0} = \frac{1}{T_{0}} \int_{T_{0}} x(t) dt$$

$$a_{n} = \frac{2}{T_{0}} \int_{T_{0}} x(t)cos(n \cdot \omega_{0} \cdot t) dt$$

$$a_{n} = \frac{2}{T_{0}} \int_{T_{0}} x(t)sen(n \cdot \omega_{0} \cdot t) dt$$

### 6.3 Série Exponencial de Fourier

Usando a igualdade de Euler, podemos expressar $cos(n \cdot \omega_{0} \cdot t)$ e $sen(n \cdot \omega_{0} \cdot t)$ em termos de exponenciais $e^{jw_{0}t}$ e $e^{-j\omega_{0}t}$. Sendo claramente possível expressar a série trigonométrica de Fourier como uma série de exponenciais complexas.

A série exponencial de Fourier para um sinal periódico $x(t)$ pode ser descrita por 

$$x(t) = \sum_{n=-\infty}^{\infty} D_{n} e^{jn\omega_{0}t}$$

onde 

$$D_{n} = \frac{1}{T_{0}} \int_{T_{0}} x(t) e^{-jn\omega_{0}t} dt$$

# Capítulo 7 - Transformada de Fourier

A transformada de Laplace não é muito recomendada para realizar análises de sinais, por isso representamos os sinais em exponenciais $e^{j\omega t}$ ao invés de $e^{st}$.

A transformada de fourier nos proporciona representar sinais não periódicos em formato exponencial $e^{j\omega t}$.

## 7.1 Representação de Sinais Não Periódicos Pela Integral de Fourier

Para representar um sinal não periódico $x(t)$, tomamos a ideia de limite, e dizemos que para esse sinal não periódico, seu período tende ao infinito.

$$\lim_{T_{0} \to \infty} x_{T_{0}}(t) = x(t)$$

Onde a transformada de Fourier de um sinal $x(t)$ é dada pela integral de Fourier

$$X(\omega) = \int_{-\infty}^{\infty} x(t) \cdot e^{-j\omega t} dt$$

$$X(\omega) = \mathcal{F}\ [\ x(t)\ ] \quad \text{e} \quad x(t) = \mathcal{F}^{-1} \ [\ X(\omega) \ ]$$

Sendo a transformada inversa de Fourier dada por

$$x(t) = \frac{1}{2\pi} \int_{-\infty}^{\infty} X(\omega) \cdot e^{j\omega t} d\omega$$

**LINEARIDADE DA TRANSFORMADA DE FOURIER**

A transformada de Fourier é devido ás propriedades da integral, um sistema linear, portanto, podemos assumir a linearidade da transformada

![[Pasted image 20250317120547.png]]

## 7.3 Algumas Propriedades da Transformada de Fourier

Um aspecto importante da transformada, é a dualidade tempo-frequência.

![[Pasted image 20250317125807.png]]

Esse conceito relaciona operações realizadas no domínio do tempo com operações equivalentes no domínio da frequência.

![[Pasted image 20250317134106.png]]
### **Tabela de Operações Correspondentes**

| **Operação no Tempo $f(t)$**                             | **Efeito na Frequência $F(\omega)$**                     |
| -------------------------------------------------------- | -------------------------------------------------------- |
| $f(t - t_0)$ (Deslocamento no tempo)                     | $e^{-j\omega t_0} F(\omega)$ (Multiplicação exponencial) |
| $f(t)e^{j\omega_0 t}$ (Modulação senoidal)               | $F(\omega - \omega_0)$ (Deslocamento na frequência)      |
| $f'(t)$ (Derivada no tempo)                              | $j\omega F(\omega)$ (Multiplicação por jωj\omegajω)      |
| $\int_{-\infty}^{t} f(\tau) d\tau$ (Integração no tempo) | $\frac{F(\omega)}{j\omega}​$ (Divisão por jωj\omegajω)   |
| $f(at)$ (Escalonamento no tempo)                         | $\frac{1}{a}X(\frac{\omega}{a})$                         |
| $f(t)$ limitado no tempo                                 | $F(\omega)$ tem espalhamento na frequência               |
| $f(t)$ periódico                                         | $F(\omega)$ é uma soma de deltas na frequência           |

# Capítulo 8 - Amostragem: A Ponte Entre Contínuo e Discreto

