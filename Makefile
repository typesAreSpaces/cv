SRC=$(wildcard *.tex)
PAPER=main.tex
OUTPUT=$(PAPER:.tex=.pdf)
FILES=$(wildcard ./*.tex) $(wildcard ./sections/*.tex) 
ENGINE=pdflatex

all: cv.pdf
	while sleep 1; do ls *.tex | entr make $(OUTPUT); done

cv.pdf: $(OUTPUT)
	@cp $(OUTPUT) cv.pdf

$(OUTPUT): $(FILES) simplecv.sty
	@$(ENGINE) -synctex=1 main
	#bibtex main.aux
	#bibtex publications.aux
	@biber main
	@$(ENGINE) -synctex=1 main
	@$(ENGINE) -synctex=1 main

.PHONY: clean

clean:
	rm -f main.aux
	rm -f main.bbl
	rm -f main.bcf
	rm -f main.blg
	rm -f main.dvi
	rm -f main.log
	rm -f main.out
	rm -f main.run.xml
	rm -f main.synctex.gz
	rm -f main.pdf
	rm -f cv.pdf
