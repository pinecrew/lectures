RESULT=atomic-physics.pdf

dropbox: $(RESULT)
	cp $(RESULT) ~/Dropbox/Public/lectures/

%.pdf: %.tex
	latexmk -pdf $<

clean:
	latexmk -C
