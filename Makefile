BOOKNAME = monero-GUI-guide
CHAPTERS = monero-GUI-guide.md
TOC = --toc --toc-depth=2
LATEX_CLASS = report
GEOMETRY = geometry:a4paper

all: book

book: pdf

pdf: output/$(BOOKNAME).pdf

clean:
	rm -r output

output/$(BOOKNAME).pdf: $(CHAPTERS)
	mkdir -p output
	pandoc $(TOC) -f gfm --pdf-engine=pdflatex \
            -V documentclass=$(LATEX_CLASS) -V $(GEOMETRY) \
            --number-sections -V -links-as-notes \
            -V urlcolor:blue -o $@ $^

.PHONY: all book clean pdf
