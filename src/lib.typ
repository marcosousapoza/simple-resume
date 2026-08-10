// A compact entry header that keeps scan-critical information prominent.
#let entry(
  title: none,
  date: none,
  subtitle: none,
  location: none,
  grade: none,
) = {
  let title-line = if location == none {
    title
  } else {
    [#title #text(size: 8.5pt, weight: "regular", fill: rgb("555555"))[
      | #location
    ]]
  }

  block(above: 0.55em, below: 0.18em, breakable: false)[
    #if subtitle == none and grade == none {
      grid(
        columns: (1fr, auto),
        column-gutter: 1em,
        text(size: 10pt, weight: "bold", title-line),
        align(right, text(size: 8.8pt, weight: "semibold", date)),
      )
    } else {
      grid(
        columns: (1fr, auto),
        rows: (auto, auto),
        column-gutter: 1em,
        row-gutter: 0.32em,
        text(size: 10pt, weight: "bold", title-line),
        align(right, text(size: 8.8pt, weight: "semibold", date)),
        if subtitle == none {
          []
        } else {
          text(size: 9.2pt, weight: "medium", style: "italic", subtitle)
        },
        if grade == none {
          []
        } else {
          align(right, text(size: 8.8pt, weight: "medium", [Grade: #grade]))
        },
      )
    }
  ]
}

// A compact, traditional resume inspired by classic one-page academic layouts.
#let resume(
  name: "",
  tagline: none,
  summary: none,
  phone: none,
  email: none,
  address: none,
  links: (),
  photo: none,
  photo-size: (width: 0.82in, height: 0.92in),
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
  set par(leading: 0.72em, spacing: 0.9em)
  set block(spacing: 0.95em)
  set list(
    marker: [•],
    indent: 0.1em,
    body-indent: 0.55em,
    spacing: 0.55em,
  )

  show link: it => underline(text(fill: rgb("0563c1"), it))
  show heading.where(level: 1): it => block(
    above: 1.15em,
    below: 0.4em,
    width: 100%,
    inset: (bottom: 0.18em),
    stroke: (bottom: 0.7pt),
    sticky: true,
  )[
    #text(size: 10.4pt, weight: "bold", upper(it.body))
  ]

  let details = (phone, email, address) + links
  let details = details.filter(item => item != none)
  let identity = [
    #text(size: 17pt, weight: "bold", name)
    #if tagline != none {
      linebreak()
      text(size: 9pt, style: "italic", tagline)
    }
    #if summary != none {
      block(above: 0.45em)[
        #set par(leading: 0.55em)
        #text(size: 8.7pt, summary)
      ]
    }
    #if details.len() > 0 {
      block(above: 0.2em)[
        #text(size: 8.6pt, details.join([ #h(0.35em)|#h(0.35em) ]))
      ]
    }
  ]

  let profile = if photo == none {
    identity
  } else {
    grid(
      columns: (1fr, photo-size.width),
      column-gutter: 0.22in,
      align(top, identity),
      align(top + right)[
        #box(
          width: photo-size.width,
          height: photo-size.height,
          radius: 2pt,
          clip: true,
          stroke: 0.4pt,
        )[
          #set image(width: 100%, height: 100%, fit: "cover")
          #photo
        ]
      ],
    )
  }

  profile

  body
}
