# Math review for new biostatistics students

This is a review of math concepts for students beginning a graduate program in biostatistics. The emphasis here is on "prerequisite" concepts -- i.e., mathematical concepts and techniques that your instructor is likely to assume that you already know and won't spend class time reviewing.

This repository contains the source code for the document; [to read the review, click here](https://iowabiostat.github.io/math-review/index.html).

If you have any questions, email patrick-breheny@uiowa.edu (or another faculty member, if there's someone you already know better) or [open an issue](https://github.com/IowaBiostat/math-review/issues).

## Contributing

You want to help write this review? Great! It's written in markdown and compiled to html using [mdbook](https://rust-lang.github.io/mdBook/). To make edits, just run

```
mdbook build
```

after making your edits, and after committing/pushing, these edits will appear online.

I will mention that because it's written in markdown, there are sometimes parsing issues when markdown syntax conflicts with latex syntax. In addition to the issues [mentioned here](https://rust-lang.github.io/mdBook/format/mathjax.html), I have found it sometimes necessary (albeit rarely) to escape underscores (`\_`) in order to prevent them from being treated as the markdown shortcut for italics.
