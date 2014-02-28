SOURCE := $(shell ls *.tex)
OUTPUT := statradiophys.pdf


all: share

share: $(OUTPUT)
	cp $< ~/Dropbox/Public/lectures

%.pdf: %.tex $(SOURCE)
	latexmk -pdf $<

clean:
	latexmk -C
