LILY_CMD_LINUX = lilypond -ddelete-intermediate-files -dno-point-and-click -drelative-includes

all: legLinux

legLinux:
	lilypond-book --pdf --output=dir legend.lytex
	cd dir; xelatex legend.tex

clean:
	- rm -r dir/
