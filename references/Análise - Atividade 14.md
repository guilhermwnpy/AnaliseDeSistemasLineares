## Descrição 

Atividade passada na aula do dia 21/02/2025

# Atividade

> [!faq] Enunciado
> Se um sistema Linear cuja resposta ao impulso é $h(t)=e^{-5t}u(t)$
> 
> a) Qual será a saída desse sistema se sua entrada for $x(t) = cos(3000t)$ ?
> 
> b) Como você pode usar a transformada de Fourier para responder a) ?
> 
> ![[20250221_122821.jpg|400]]
> ![[20250221_122536.jpg|300]]



$$\int_{-\infty}^{\infty} e^{-5(\tau)}u(\tau) \cdot \frac{1}{2}e^{jw(t-\tau)} d\tau$$

$$\frac{1}{2} \cdot \int_{0}^{\infty} e^{-5(\tau)} e^{jw(t-\tau)} d\tau$$

$$\frac{ e^{jwt} }{2} \cdot \int_{0}^{\infty} e^{-5\tau} \cdot e^{-jw\tau} d\tau$$

$$\frac{ e^{jwt} }{2} \cdot \int_{0}^{\infty} e^{ (-jw - 5)\tau } d\tau$$

$$\frac{ e^{jwt} }{2} \cdot \left[\frac{ e^{(-jw-5)\tau} }{ -jw-5 }\right]_{0}^{\infty}$$

$$\frac{ e^{jwt} }{2} \cdot \left[-\frac{ 1 }{ -jw-5 }\right]$$

$$\frac{ e^{jwt} }{2} \cdot \frac{ 1 }{ jw-5 }$$

$$\frac{ e^{jwt} }{2jw - 10} $$