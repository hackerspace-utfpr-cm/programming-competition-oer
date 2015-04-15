SLIDES_ROOT = root
PDFLATEX_OPTS=-file-line-error-style -interaction=nonstopmode

all: clean $(SLIDES_ROOT).pdf

check:
	chktex -n 2 -n 8 -n 6 -n 38 -n 13 -n 36 -n 24 $(SLIDES_ROOT)

distclean: clean
	rm -f $(SLIDES_ROOT).pdf

clean:
	rm -f *.log *.aux *.toc *.dvi *.bbl *.blg *.*~* examples/*.*~* *.lof *.ilg *.gls *.glo *.backup *.bak.* *.nav *.out *.snm *.gif *.backup *.dat *.vrb *.brf *.fls
	find . -name "*.aux" -delete
	find . -name "*.*~" -delete
	find . -name "*.backup" -delete

%.pdf: %.tex
	-pdflatex -draftmode $(PDFLATEX_OPTS) $(SLIDES_ROOT)
	-pdflatex -draftmode $(PDFLATEX_OPTS) $(SLIDES_ROOT)
	-pdflatex -draftmode $(PDFLATEX_OPTS) $(SLIDES_ROOT)
	pdflatex $(PDFLATEX_OPTS) $(SLIDES_ROOT)
