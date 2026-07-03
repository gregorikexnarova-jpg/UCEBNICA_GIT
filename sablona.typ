#let projekt(titul: "", autori: (), body) = {
  set page(
    paper: "a4",
    margin: (top: 2.5cm, bottom: 2.5cm, left: 3cm, right: 2cm),
    header: align(right, text(8pt, fill: gray)[Učebnica informatiky pre SŠ]),
    footer: [
      #align(center, counter(page).display("1"))
    ]
  )
  set text(font: "Liberation Sans", size: 11pt, lang: "sk")
  set par(justify: true, leading: 0.65em)
  
  // Nadpisy
  show heading: set text(fill: rgb("#1a5fb4"))
  show heading.where(level: 1): it => block(width: 100%, below: 1.5em)[
    #set text(size: 18pt)
    #it.body
  ]

  // Titulná strana
  align(center + horizon)[
    #text(size: 28pt, weight: "bold", fill: rgb("#1a5fb4"))[#titul]
    #v(2cm)
    #text(size: 14pt)[Autor: #autori.join(", ")]
  ]
  pagebreak()

  // Obsah
  outline(indent: 1.5em)
  pagebreak()

  body
}
