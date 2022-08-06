SRC=$(wildcard *.tex)
PAPER=main.tex
OUTPUT=$(PAPER:.tex=.pdf)
FILES=$(wildcard ./*.tex)

all: main.pdf

main.pdf: $(FILES)
	latex main
	#bibtex main
	#bibtex publications.aux
	biber main
	latex main
	pdflatex main

.PHONY: clean

clean:
	@rubber --clean $(PAPER)
	@rm -rf main.bbl
	@rm -rf main.blg
	@rm -rf main.pdf

watch:
	@while true; do inotifywait $(SRC); sleep 0.01; make all; done

