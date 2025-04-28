## Descrição

Os principais sistemas elementares

# Sistemas elementares

### **1. Sistema Elementar Atrasador**

- **Descrição:** Esse sistema aplica um atraso ao sinal de entrada, deslocando-o no tempo. Matematicamente, se o sinal de entrada é x(t)x(t), o sinal atrasado é dado por y(t)=x(t−t0)y(t) = x(t - t_0), onde t0t_0 é o tempo de atraso.
- **Uso do degrau:** O sinal degrau unitário u(t)u(t) pode ser usado para tornar um sistema causal, garantindo que o sinal só exista para t≥0t \geq 0. Por exemplo, x(t−t0)u(t−t0)x(t - t_0)u(t - t_0) representa um sinal atrasado e causal.

**Exemplo:** Um pulso que começa em t=3t = 3: y(t)=u(t−3)y(t) = u(t - 3).

---

### **2. Sistema Elementar Somador**

- **Descrição:** Esse sistema combina dois ou mais sinais de entrada ao somá-los. Para entradas x1(t)x_1(t) e x2(t)x_2(t), o sistema produz y(t)=x1(t)+x2(t)y(t) = x_1(t) + x_2(t).
- **Propriedade Linear:** Esse é um exemplo direto da propriedade de aditividade de sistemas lineares.

**Exemplo:** A soma de um sinal senoidal e um sinal exponencial:

y(t)=sin⁡(ωt)+e−t.y(t) = \sin(\omega t) + e^{-t}.

---

### **3. Sistema Elementar Amplificador/Atenuador**

- **Descrição:** Esse sistema escala a amplitude de um sinal multiplicando-o por uma constante KK. Se K>1K > 1, o sistema amplifica o sinal; se 0<K<10 < K < 1, ele atenua.
- **Matemática:** y(t)=K⋅x(t)y(t) = K \cdot x(t).

**Exemplo:** Um sinal senoidal amplificado em 2 vezes:

y(t)=2⋅sin⁡(ωt).y(t) = 2 \cdot \sin(\omega t).

---

### **4. Sistema Elementar Multiplicador**

- **Descrição:** Multiplica dois sinais de entrada para gerar a saída. Se os sinais de entrada são x1(t)x_1(t) e x2(t)x_2(t), a saída é y(t)=x1(t)⋅x2(t)y(t) = x_1(t) \cdot x_2(t).
- **Propriedade Importante:** Quando um sinal é multiplicado por outro, a convolução de suas frequências ocorre, criando um espectro modulado.

**Exemplo:** Um sinal senoidal modulado por uma exponencial decrescente:

y(t)=e−t⋅sin⁡(ωt).y(t) = e^{-t} \cdot \sin(\omega t).

---

### **A Relação com o Livro de B.P. Lathi**

Esses sistemas são apresentados como **operações elementares** na análise de sinais e sistemas no livro de B.P. Lathi. Eles são fundamentais porque permitem a construção de sistemas mais complexos e são amplamente utilizados na modelagem de sistemas físicos e no processamento de sinais.

No livro, esses conceitos aparecem nos capítulos iniciais, onde são descritas as operações básicas em sinais, tanto no domínio do tempo quanto no da frequência.

---

Se você quiser simular algum desses sistemas no Octave ou explorar exemplos específicos, posso ajudá-lo a implementá-los!