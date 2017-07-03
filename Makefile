LATEX       = pdflatex -interaction=nonstopmode -halt-on-error
BASH        = bash -c
ECHO        = echo
RM          = rm -rf
TMP_SUFFS   = pdf aux bbl blg log dvi ps eps out brf
CHECK_RERUN =

NAME = cv

all: ${NAME}.pdf


${NAME}.pdf: ${NAME}.tex
	${LATEX} ${NAME}
	${LATEX} ${NAME}
	( grep "Rerun to get" ${NAME}.log && ${LATEX} ${NAME} ) || echo "Done."
	( grep "Rerun to get" ${NAME}.log && ${LATEX} ${NAME} ) || echo "Done."

clean:
	${RM} $(foreach suff, ${TMP_SUFFS}, ${NAME}.${suff})
	${RM} *Notes.bib
