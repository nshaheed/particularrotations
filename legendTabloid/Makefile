# RULES FOR COMPILATION
# TO BUILD TITLE: USE LINUX
# TO BUILD LEGEND: USE LINUX
# TO BUILD SCORE: USE WINDOWS
# YES IT'S FUCKING STUPID

LILY_CMD = "/cygdrive/c/Program Files (x86)/LilyPond/usr/bin/lilypond.exe" -ddelete-intermediate-files -dno-point-and-click -drelative-includes

LILY_CMD_LINUX = lilypond -ddelete-intermediate-files -dno-point-and-click -drelative-includes

all: a combine combinea va v

allLinux: aLinux legLinux ttlLinux combineLinux 

comp:
	$(LILY_CMD) *.ly
	# xelatex.exe title.tex

compLinux:
	$(LILY_CMD_LINUX) *.ly
	xelatex title.tex

v: comp
	sumatrapdf.exe *.pdf

vLinux: comp
	xdg-open title.pdf
	xdg-open legend.pdf
	xdg-open score.pdf

b: comp
	sumatrapdf.exe *.pdf &

a: comp
	cd violin1; make 
	cd violin2; make 
	cd viola;   make 
	cd cello;   make

aLinux: compLinux
	cd violin1; make compLinux
	cd violin2; make compLinux
	cd viola;   make compLinux
	cd cello;   make compLinux

va: comp
	cd violin1; make
	cd violin2; make
	cd viola;   make
	cd cello;   make
	sumatrapdf.exe *.pdf &
	sumatrapdf.exe */*.pdf &

leg:
	# /cygdrive/c/Python27/python.exe "/cygdrive/c/Program\ Files\ \(x86\)/LilyPond/usr/bin/lilypond-book.py" --pdf --output=dir legend.lytex
	/cygdrive/c/Python27/python.exe "C:\Program Files (x86)\LilyPond\usr\bin\lilypond-book.py" --pdf --output=dir legend.lytex
	# /cygdrive/c/Python27/python.exe "C:\Program Files (x86)\LilyPond\usr\bin\lilypond-book.py" --output=dir legend.lytex
	# xelatex.exe -include-directory=DIR dir/legend.tex

legLinux:
	# lilypond-book --pdf --output=dir legend.lytex --left-padding=30
	lilypond-book --pdf --output=dir legend.lytex
	# cd dir; pdflatex legend.tex
	cd dir; xelatex legend.tex

ttlLinux:
	pdflatex title.tex


combineLinux:
	pdfunite title.pdf dir/legend.pdf score.pdf ThreeLanguages.pdf
	pdfunite title.pdf dir/legend.pdf violin1/violin1.pdf ThreeLanguages-violin1.pdf
	pdfunite title.pdf dir/legend.pdf violin2/violin2.pdf ThreeLanguages-violin2.pdf
	pdfunite title.pdf dir/legend.pdf viola/viola.pdf ThreeLanguages-viola.pdf
	pdfunite title.pdf dir/legend.pdf cello/cello.pdf ThreeLanguages-cello.pdf

combine:
	pdftk.exe title.pdf dir/legend.pdf score.pdf cat output ThreeLanguages.pdf

combinea:
	cd violin1; make combine
	cd violin2; make combine
	cd viola;   make combine
	cd cello;   make combine
