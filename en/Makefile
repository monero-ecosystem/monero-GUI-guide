# A copy of this Makefile should be inculded in every folder containing a translation of the guide.
CHAPTERS = *.md

BUILD_PATH = $(BUILD)/$(LANGUAGE)

all: book

book: epub html pdf

clean:
	rm -r $(BUILD)

epub: $(BUILD_PATH)/epub/$(BOOKNAME)

html: $(BUILD_PATH)/html/$(BOOKNAME)

pdf: $(BUILD_PATH)/pdf/$(BOOKNAME)

$(BUILD_PATH)/epub/$(BOOKNAME):
	mkdir -p ../$(BUILD_PATH)/epub
	pandoc $(TOC) -S --epub-metadata=../$(METADATA) --epub-cover-image=../$(COVER_IMAGE) -o ../$@.epub $(CHAPTERS)

$(BUILD_PATH)/html/$(BOOKNAME): 
	mkdir -p ../$(BUILD_PATH)/html
	ln -s ../../../media ../$(BUILD_PATH)/html/media
	pandoc $(TOC) --standalone --to=html5 -o ../$@.html $(CHAPTERS)

$(BUILD_PATH)/pdf/$(BOOKNAME): 
	mkdir -p ../$(BUILD_PATH)/pdf
	pandoc $(TOC) --latex-engine=$(LATEX_ENGINE) -V documentclass=$(LATEX_CLASS) -o ../$@.pdf $(CHAPTERS)

.PHONY: all book clean epub html pdf
