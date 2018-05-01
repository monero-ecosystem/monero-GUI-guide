BOOKNAME = monero-GUI-guide
CHAPTERS = monero-GUI-guide.md
TOC = --toc --toc-depth=2
LATEX_CLASS = report

all: book

book: pdf

pdf: output/$(BOOKNAME).pdf

clean:
	rm -r output

output/$(BOOKNAME).pdf: $(CHAPTERS)
	mkdir -p output
	pandoc $(TOC) -f gfm --pdf-engine=pdflatex \
            -V documentclass=$(LATEX_CLASS) \
            --number-sections -o $@ $^

.PHONY: all book clean pdf
