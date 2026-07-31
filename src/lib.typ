// A compact, traditional resume inspired by classic one-page academic layouts.
#let resume(
  name: "",
  phone: none,
  email: none,
  address: none,
  links: (),
  photo: none,
  body,
) = {
  set document(title: name, author: name)
  set page(
    paper: "us-letter",
    margin: (x: 0.32in, top: 0.27in, bottom: 0.3in),
  )
  set text(
    font: ("Nimbus Roman", "Liberation Serif"),
    size: 9.8pt,
    lang: "en",
  )
  set par(leading: 0.7em, spacing: 0.95em)
  set block(spacing: 0.95em)
  set list(
    marker: [•],
    indent: 1.35em,
    body-indent: 0.65em,
    spacing: 0.55em,
  )

  show link: it => underline(text(fill: rgb("0563c1"), it))
  show heading.where(level: 1): it => block(
    above: 1em,
    below: 0.3em,
    width: 100%,
    inset: (bottom: 0.18em),
    stroke: (bottom: 0.7pt),
    sticky: true,
  )[
    #text(size: 9.6pt, weight: "bold", upper(it.body))
  ]

  let details = (phone, email, address) + links
  let details = details.filter(item => item != none)
  let header = align(center)[
    #block(below: 1.35em)[
      #text(size: 17pt, weight: "bold", name)
    ]
    #if details.len() > 0 {
      text(size: 9pt, details.join([ #h(0.35em)|#h(0.35em) ]))
    }
    #v(0.28em)
  ]

  if photo == none {
    header
  } else {
    block(width: 100%, height: 0.76in)[
      #header
      #place(top + right)[
        #box(
          width: 0.7in,
          height: 0.7in,
          radius: 50%,
          clip: true,
        )[
          #set image(width: 100%, height: 100%, fit: "cover")
          #photo
        ]
      ]
    ]
  }

  body
}
