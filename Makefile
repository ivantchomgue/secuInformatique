all: rapport.pdf

rapport.pdf: rapport.tex table.tex
	xelatex -shell-escape rapport.tex
