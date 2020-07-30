.PHONY: clean

all: cv.pdf

cv.pdf: cv.tex yaac-another-awesome-cv.cls
	make clean
	latexmk -pdflatex=lualatex -pdf cv.tex

clean:
	latexmk -C cv.tex