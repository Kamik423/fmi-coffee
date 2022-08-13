kaffeemaschine.pdf : kaffeemaschine.tex
	latexmk -cd -f -xelatex -interaction=nonstopmode -synctex=1 --output-directory=.aux_LaTeX -latexoption=--shell-escape kaffeemaschine.tex
	mv .aux_LaTeX/kaffeemaschine.pdf .

clean:
	rm -r .aux_LaTeX
	rm kaffeemaschine.pdf