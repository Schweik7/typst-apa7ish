#import "apa7.typ": *
#import "@preview/tablex:0.0.5": tablex, cellx
// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "A Title is all you need",
  subtitle: "The impact of a good title on a paper's citations count",
  documenttype: "Research Article",
  authors: (
    (name: "Klaus Krippendorff", 
      email: "email@upenn.edu", 
      affiliation: "University of Pennsylvania", 
      postal: "Department of Communication, University of Pennsylvania, Philadelphia, PA 19104",
      orcid: "0000-1111-1111-1111",
      corresponding: true),
      (name: "Ashish Vaswani", 
      affiliation: "Google Brain", 
      orcid: "0000-1111-1111-1111"),
      (name: "Niklas Luhmann", 
      affiliation: "University of Pennsylvania", 
      orcid: "0000-1111-1111-1111")
  ),
  // Insert your abstract after the colon, wrapped in brackets.
  // Example: `abstract: [This is my abstract...]`
  abstract: [Title of a scientific paper is an important element that conveys the main message of the study to the readers. 

],
  // date: "March 28, 2023",
  keywords: [content analysis, citation, bibliometrics]
)
// #show rest:columns(2,rest)
= Introduction
11
== level 2
asfdafdsa

== asdfadf

Title of a scientific paper is an important element [@teixeira2015importance] that conveys the main message of the study to the readers [@hartley2019academic]. 
In this study, we investigate the impact of paper titles on citation count, and propose that the title alone has the highest impact on citation count. 
Using a dataset of 1000 scientific papers from various disciplines, we analyzed the correlation between the characteristics of paper titles, 
such as length, clarity, novelty, and citation count [@li2019correlation]. Our results show that papers with clear, 
concise, and novel titles tend to receive more citations than those with longer or less informative titles @west2013role. 
Moreover, we found that papers with creative and attention-grabbing titles tend to attract more readers and 
citations, which supports our hypothesis that the title alone has the highest impact on citation count. 
Our findings suggest that researchers should pay more attention to crafting effective titles that accurately 
and creatively summarize the main message of their research, as it can have a significant impact on the success 
and visibility of their work.

= Declaration of Interest Statement
#label("declaration-of-interest-statement")
The authors report there are no competing interests to declare.

// #pagebreak()

#import "@preview/tablex:0.0.5": tablex, rowspanx, colspanx

#tablex(
  columns: 4,
  align: center + horizon,
  auto-vlines: false,

  // indicate the first two rows are the header
  // (in case we need to eventually
  // enable repeating the header across pages)
  header-rows: 2,

  // color the last column's cells
  // based on the written number
  map-cells: cell => {
    if cell.x == 3 and cell.y > 1 {
      cell.content = {
        let value = int(cell.content.text)
        let text-color = if value < 10 {
          red.lighten(30%)
        } else if value < 15 {
          yellow.darken(13%)
        } else {
          green
        }
        set text(text-color)
        strong(cell.content)
      }
    }
    cell
  },

  /* --- header --- */
  rowspanx(2)[*Username*], colspanx(2)[*Data*], (), rowspanx(2)[*Score*],
  (),                 [*Location*], [*Height*], (),
  /* -------------- */

  [John], [Second St.], [180 cm], [5],
  [Wally], [Third Av.], [160 cm], [10],
  [Jason], [Some St.], [150 cm], [15],
  [Robert], [123 Av.], [190 cm], [20],
  [Other], [Unknown St.], [170 cm], [25],
)

#bibliography("example.bib")