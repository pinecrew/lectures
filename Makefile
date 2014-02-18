all: share

pdf:
	latexmk -pdf statradiophys.tex

share: pdf
	cp *.pdf ~/Dropbox/Public/lectures

clean:
	latexmk -C
