## Descrição

Atividade passada na última aula 18/12/2024. Na aula do dia 20/12/2024 o professor Jugurta não pode comparecer, então Kavin deu alguns exemplos.

# Atividade

> [!question] Enunciado
>
> Com o trem de impulso $x(t)$, determinado por:
>
> $$x(t) = 2\delta(t-0.1) - 0.5\delta(t+0.5) + 2\delta(t+1)$$
>
> Encontrar a saída do sistema $y(t)$, dada a resposta ao impulso sendo:
>
> $$h(t) = e^{-0.1t}u(t)$$
>
> ![[IMG-20241218-WA0015.jpg]]

## Resposta

A resposta ao impulso pode ser calculada separadamente para cada impulso do trem de impulso, devido às propriedades lineares do sistema ao qual o sinal é submetido, portanto podemos separar os impulsos e calcular a resposta:

Para $x_{1} = 2\delta(t-0.1)$, a resposta é $2h(t-0.1)$

$$2h(t-0.1) = 2e^{-0.1(t-0.1)}u(t-0.1)$$

Para $x_{2} = - 0.5\delta(t+0.5)$, a resposta é $-0.5h(t+0.5)$

$$-0.5h(t+0.5) = -0.5e^{-0.1(t+0.5)}u(t+0.5)$$

Para $x_{3} = 2\delta(t+1)$, a resposta é $2h(t+1)$

$$2h(t+1) = 2e^{-0.1(t+1)}u(t+1)$$

Agora somamos a resposta dos três impulsos para obter a resposta total $y(t)$:
 

> [!success] Resposta
> $$
> y(t) =
> 2e^{-0.1(t-0.1)}u(t-0.1)
> -0.5e^{-0.1(t+0.5)}u(t+0.5)
> +2e^{-0.1(t+1)}u(t+1)
> $$