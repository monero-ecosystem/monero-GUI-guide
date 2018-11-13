export BUILD = build
export BOOKNAME = monero-gui-wallet-guide
export TITLE = title.txt
export METADATA = metadata.xml
export TOC = --toc --toc-depth=3
export COVER_IMAGE = media/monero-logo-1280.png
export LATEX_CLASS = report
export LATEX_ENGINE = xelatex
export MARGIN = margin=1in
export URL_COLOR = blue

# The following is the list of folders containing translations of the guide
LANGUAGES = en es it fr

EPUB_DIRS = $(LANGUAGES:%=epub-%)
HTML_DIRS = $(LANGUAGES:%=html-%)
PDF_DIRS = $(LANGUAGES:%=pdf-%)

all: book

book: epub html pdf

clean: 
	rm -r $(BUILD)

epub: $(EPUB_DIRS)
$(EPUB_DIRS):
	$(MAKE) -C $(subst epub-,,$@) LANGUAGE=$(subst epub-,,$@) epub

html: $(HTML_DIRS) 
$(HTML_DIRS): 
	$(MAKE) -C $(subst html-,,$@) LANGUAGE=$(subst html-,,$@) html

pdf: $(PDF_DIRS)
$(PDF_DIRS): 
	$(MAKE) -C $(subst pdf-,,$@) LANGUAGE=$(subst pdf-,,$@) pdf

.PHONY: subdirs $(EPUB_DIRS)
.PHONY: subdirs $(HTML_DIRS)
.PHONY: subdirs $(PDF_DIRS)
.PHONY: all book clean epub html pdf 
