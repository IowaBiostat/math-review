_book/index.html: index.Rmd *.md
	@rm -f math-review.*
	R -e "bookdown::render_book('.', 'all')"
	@rm math-review.log
