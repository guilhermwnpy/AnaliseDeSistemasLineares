#import "@preview/marginalia:0.1.3" as marginalia: note, wideblock

#let template(body) = {
  let config = (
    inner: (far: 2cm, width: 0cm, sep: 5mm),  // Margem interna fixa
    outer: (far: 2cm, width: 2.5cm, sep: 7mm),  // Margem externa fixa
    top: 1.75cm,      // Espaço superior (y)
    bottom: 2cm,   // Espaço inferior (y)
    book: true,       // Ativa margens espelhadas
    clearance: 8pt,   // Espaço entre notas
  )

  marginalia.configure(..config)

  // Configuração de página
  set page(
    ..marginalia.page-setup(..config),
    header: none,
    footer: {
        wideblock[
          #set text(8pt)
          #v(1fr)
          #line(stroke: 0.5pt, length: 17cm)
          #v(5pt)
          Análise de Sistemas Lineares
          #h(1fr)
          #context {
            counter(page).display(
              "1 / 1",
              both: true,
            )
          }
          #v(0.75cm)
        ]
      },
  )

  set text(size: 11pt, font: "TeX Gyre Pagella")
  set par(justify: true)
  set heading(numbering: "1.")

  body
}