#let title = [
  A fluid dynamic model
  for glacier flow
]
#set page(
  header: align(
    right + horizon,
    title
  ),
  numbering: "1",
)
#set par(justify: true)
#set text(
  font: "Linux Libertine",
  size: 11pt,
)
#align(center, text(17pt)[
  *#title*
])

#grid(
  columns: (1fr, 1fr),
  align(center)[
    Therese Tungsten \
    Artos Institute \
    #link("mailto:tung@artos.edu")
  ],
  align(center)[
    Dr. John Doe \
    Artos Institute \
    #link("mailto:doe@artos.edu")
  ]
)
#align(center)[
  #set par(justify: false)
  *Abstract* \
  #lorem(80)
]
#show: rest => columns(2, rest)
#show heading.where(
  level: 1
): it => block(width: 100%)[
  #set align(center)
  #set text(12pt, weight: "regular")
  #smallcaps(it.body)
]

#show heading.where(
  level: 2
): it => text(
  size: 11pt,
  weight: "regular",
  style: "italic",
  it.body + [.],
)
#set heading(numbering: "1.")

= Introduction
Some text here.

= Background

== 2eafsdf
The current value is: #counter(heading).display()
=== 3asdfasdf
gsdgd
The current value is:
#counter(heading).display()

Or in roman numerals:
#counter(heading).display("I")
