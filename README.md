# Simple Resume

A compact Typst resume template with a traditional, single-column layout.

![Simple Resume preview](preview.png)

## Usage

```typst
#import "@local/simple-resume:0.1.0": resume

#show: resume.with(
  name: "Ada Lovelace",
  phone: "+1 555 0100",
  email: "ada@example.com",
  address: "London, UK",
  links: (link("https://example.com")[Portfolio],),
  photo: none,
)

= Education

Your resume content goes here.
```

`photo` accepts content such as `image("photo.jpg")`. When present, it is cropped
to a circular portrait in the upper-right corner. Only `resume` is exported;
sections and entries use regular Typst content.
