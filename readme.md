# Math review for new biostatistics students

This is a review of math concepts for students beginning a graduate program in biostatistics. The emphasis here is on "prerequisite" concepts -- i.e., mathematical concepts and techniques that your instructor is likely to assume that you already know and won't spend class time reviewing.

This repository contains the source code for the document; [to read the review, click here][https://iowabiostat.github.io/math-review/index] or [download the pdf](https://iowabiostat.github.io/math-review/math-review.pdf)

If you have any questions, email patrick-breheny@uiowa.edu (or another faculty member, if there's someone you already know better) or [open an issue](https://github.com/IowaBiostat/math-review/issues).

## Contributing

You want to help write this review? Great! It's written in markdown and compiled to html using [bookdown](https://bookdown.org/). After making edits, just run

```bash
make
```

if you're on a system with `make`, or 

```r
bookdown::render_book('.', 'all')
```

from within R to render the book. After committing/pushing, these edits will appear online.
