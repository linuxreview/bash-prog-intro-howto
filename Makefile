.PHONY: all clean

all: bash-prog-intro-howto.pdf

bash-prog-intro-howto.pdf: info.tex ch00.tex ch01.tex ch02.tex ch03.tex ch04.tex ch05.tex ch06.tex ch07.tex ch08.tex ch09.tex ch10.tex ch11.tex ch12.tex ch13.tex ch14.tex main.tex
	xelatex -interaction=nonstopmode main.tex
	xelatex -interaction=nonstopmode main.tex
	xelatex -interaction=nonstopmode main.tex
	mv main.pdf bash-prog-intro-howto.pdf

clean:
	rm -f *.tux *.log *.out *.toc *.aux