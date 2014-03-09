SOURCE := $(shell ls *.tex)
OUTPUT := condensed-state.pdf

all: share

%.pdf: %.tex $(SOURCE)
	latexmk -pdf $<

share: $(OUTPUT)
	cp $< ~/Dropbox/Public/lectures/

clean:
	latexmk -C
