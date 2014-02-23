OUTPUT=vectors.pdf

dropbox: $(OUTPUT)
	cp $< ~/Dropbox/Public/lectures/

%.pdf: %.tex
	latexmk -pdf $<

clean:
	latexmk -C
