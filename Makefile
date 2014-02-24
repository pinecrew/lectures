OUTPUT := nonlinear-oscillations.pdf

all: share

%.pdf: %.tex
	latexmk -pdf $<

share: $(OUTPUT)
	cp $< ~/Dropbox/Public/lectures/

clean:
	latexmk -C
