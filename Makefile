all: main.html

clean:
	rm -f *.html

%.html: %.Rmd
	Rscript -e 'rmarkdown::render("$<")'

.PHONY: all clean
