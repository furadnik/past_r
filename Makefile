all: main.html

clean:
	rm -f *.html *.log

%.html: %.Rmd
	Rscript -e 'rmarkdown::render("$<")'

.PHONY: all clean
