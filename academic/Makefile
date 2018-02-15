LATEX       = pdflatex -interaction=nonstopmode -halt-on-error
BASH        = bash -c
ECHO        = echo
RM          = rm -rf
TMP_SUFFS   = pdf aux bbl blg log dvi ps eps out brf
CHECK_RERUN =

NAME = cv

all: cv.pdf pubs.pdf cv_pubs.pdf


${NAME}.pdf: ${NAME}.tex
	${LATEX} ${NAME}
	${LATEX} ${NAME}
	( grep "Rerun to get" ${NAME}.log && ${LATEX} ${NAME} ) || echo "Done."
	( grep "Rerun to get" ${NAME}.log && ${LATEX} ${NAME} ) || echo "Done."

pubs.pdf: pubs.tex
	${LATEX} pubs
	${LATEX} pubs
	( grep "Rerun to get" pubs.log && ${LATEX} pubs ) || echo "Done."
	( grep "Rerun to get" pubs.log && ${LATEX} pubs ) || echo "Done."

cv_pubs.pdf: cv.pdf pubs.pdf
	pdf-concat -o cv_pubs.pdf cv.pdf pubs.pdf

clean:
	${RM} $(foreach suff, ${TMP_SUFFS}, cv.${suff})
	${RM} $(foreach suff, ${TMP_SUFFS}, pubs.${suff})
	${RM} *Notes.bib
