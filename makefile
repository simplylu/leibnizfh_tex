TEX_ENGINE=xelatex
BIB_ENGINE=biber

all: clean report

report: 
	$(TEX_ENGINE) $@ && $(BIB_ENGINE) $@ && $(TEX_ENGINE) $@ && $(TEX_ENGINE) $@

clean:
	rm -f *.aux
	rm -f *.bcf
	rm -f *.lof
	rm -f *.log
	rm -f *.lot
	rm -f *.out
	rm -f *.pdf
	rm -f *.xml
	rm -f *.roc
	rm -f *.bbl
	rm -f *.blg
	rm -f *.toc