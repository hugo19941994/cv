.PHONY: esp.pdf eng.pdf all clean

all: esp.pdf eng.pdf clean

esp.pdf: esp.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make esp.tex

eng.pdf: eng.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make eng.tex

clean:
	latexmk -c
