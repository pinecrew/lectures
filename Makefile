dropbox: electricity.pdf
	cp electricity.pdf ~/Dropbox/Public/lectures/

%.pdf: %.tex $(shell ls *.tex)
	latexmk -pdf $<

clean:
	latexmk -C
