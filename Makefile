_book/index.html: index.Rmd *.md
	R -e "bookdown::render_book('.', 'all')"
