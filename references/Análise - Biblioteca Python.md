## Descrição 

Tive essa ideia, dia 22/03, na pizzaria comemorando aniversário de Gabriel.

A ideia base seria criar uma biblioteca python que possa aplicar de forma fácil os conceitos de análise de sistemas lineares.

A prova de qualidade, seria resolver com sucesso, todas as atividades e provas de análise 

Atividades:
- [[Análise#1º Unidade#Atividades|Atividades - 1° Unidade]]
- [[Análise#2º Unidade#Atividades|Atividades - 2° Unidade]]

Possíveis dependências:
- [numpy](https://numpy.org/)
- [scipy](https://scipy.org/)
- [matplotlib](https://matplotlib.org/)
- [plotly](https://plotly.com/python/getting-started/)
- [[Python - Reatividade]]

Recursos:
- [Algorítmo CORDIC](https://www.youtube.com/watch?v=m1e8IbDsIKw)
# Projeto

## Conceitos de Análise 

A biblioteca deve cobrir os conceitos teóricos de análise de sistemas lineares. O livro de B.P Lathi é a maior referência a se seguir.

O primeiro passo deve ser desenvolver um padrão para os sinais que serão constituídos, a partir desse padrão, métodos serão desenvolvidos.

## Construção

Uma das ideias que tive, seria usar [PyO3](https://pyo3.rs/v0.24.0/) para escrever as principais funções de cálculo em rust. O que deve ser feito antes de partir pro código é um planejamento tanto da teoria que será cobrida para ter um MVP, tanto a teoria para implementar essa ideia em código.

- Qual deve ser o ponto mínimo da biblioteca em termos de assunto cobrido da matéria ?
- O que deve ser feito em Rust e o que deve ser usado em Python ?


