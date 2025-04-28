## Descrição

Atividade passada na aula do dia 04/12/2024

# Atividade

> [!question] Enunciado
>Usando os sinais e sistemas elementares apresentados até agora, descrever o sistema seguinte
>
> ![[analise-atividade-02.svg]]
> ![[20241204_123325.jpg]]

## Resposta

O sinal pode ser obtido pela combinação dos 3 sinais elementares de entrada.

**Degrau**:

O sinal degrau $u(t)$, faz com que para $t<0$, o sinal de saída se comporte como se fosse um sinal adormecido. Quando $t \geq 1$, o sinal inicia.

**Senoide**:

A senoide do sistema, carrega algumas características. Essa senoide completa um ciclo a cada $5$ unidades de tempo, além de possuir um atraso de $\frac{\pi}{2}$, sendo assim o sinal da senoide pode ser representado como:

$$\text{sen}\left(\frac{2\pi}{5}\cdot t + \frac{\pi}{2}\right)$$

**Exponencial**:

Por fim, o envoltório no sinal de saída é formado por uma exponencial decrescente. Representada pela função $3 \cdot e^{-2t}$, faz com que o sinal da senoide seja atenuado, como se fosse um amortecedor.

![[analise-atividade-02-plot.svg]]