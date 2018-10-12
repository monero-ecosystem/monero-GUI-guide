BUILD = build
BOOKNAME = monero-gui-wallet-guide
TITLE = title.txt
METADATA = metadata.xml
CHAPTERS = ch00.md ch01.md ch02.md ch03.md ch04.md ch05.md ch06.md ch08.md ch09.md
TOC = --toc --toc-depth=2
COVER_IMAGE = media/monero-logo-1280.png
LATEX_CLASS = book

all: book

book: epub html pdf

clean:
	rm -r $(BUILD)

epub: $(BUILD)/epub/$(BOOKNAME)

html: $(BUILD)/html/$(BOOKNAME)

pdf: $(BUILD)/pdf/$(BOOKNAME)

$(BUILD)/epub/$(BOOKNAME): $(TITLE) $(CHAPTERS)
	mkdir -p $(BUILD)/epub
	pandoc $(TOC) -S --epub-metadata=$(METADATA) --epub-cover-image=$(COVER_IMAGE) -o $@.epub $^

$(BUILD)/html/$(BOOKNAME): $(CHAPTERS)
	mkdir -p $(BUILD)/html
	pandoc $(TOC) --standalone --to=html5 -o $@.html $^

$(BUILD)/pdf/$(BOOKNAME): $(TITLE) $(CHAPTERS)
	mkdir -p $(BUILD)/pdf
	pandoc $(TOC) --latex-engine=xelatex -V documentclass=$(LATEX_CLASS) -o $@.pdf $^
#	pandoc $(TOC) --latex-engine=xelatex  -o $@.pdf $^

.PHONY: all book clean epub html pdf
