SOURCE := $(shell ls *.tex)
OUTPUT := nonlinear-oscillations.pdf

all: share

%.pdf: %.tex $(SOURCE)
	latexmk -pdf $<

share: $(OUTPUT)
	cp $< ~/Dropbox/Public/lectures/

clean:
	latexmk -C
