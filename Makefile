dropbox: electricity.pdf
	cp electricity.pdf ~/Dropbox/Public/lectures/

%.pdf: %.tex
	latexmk -pdf $<

clean:
	latexmk -C
