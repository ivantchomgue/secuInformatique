all: rapport.pdf

rapport.pdf: rapport.tex table.tex
	xelatex -shell-escape rapport.tex
	xelatex -shell-escape rapport.tex

clean:
	\rm -f *.aux *.pyg *.toc *.out *.log
