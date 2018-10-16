LILY_CMD = "/cygdrive/c/Program Files (x86)/LilyPond/usr/bin/lilypond.exe" -ddelete-intermediate-files -dno-point-and-click -drelative-includes

LILY_CMD_LINUX = lilypond -ddelete-intermediate-files -dno-point-and-click -drelative-includes

LILY_CMD_LINUX_DEBUG = lilypond -ddelete-intermediate-files -drelative-includes

# all: a combine combinea va v
.PHONY: all score legend title debug
all: title legend score combine

debug: title legend score_debug combine

# allLinux: aLinux legLinux ttlLinux combineLinux

score:
	echo "---------COMPILING SCORE---------"
	$(LILY_CMD_LINUX) score.ly

score_debug:
	echo "---------COMPILING SCORE (DEBUG)---------"
	$(LILY_CMD_LINUX_DEBUG) score.ly

legend:
	echo "---------COMPILING LEGEND---------"
	$(MAKE) -C legendTabloid

title:
	echo "---------COMPILING TITLE---------"
	$(MAKE) -C title/

combine: title legend score
	pdfunite title/title_tabloid_score.pdf legendTabloid/dir/legend.pdf score-viola_cello.pdf Shaheed-Particular_Rotations.pdf
	pdfunite title/title_tabloid_violin.pdf legendTabloid/dir/legend.pdf score-violins.pdf Shaheed-Particular_Rotations-Violin.pdf
	pdfunite title/title_tabloid_viola_cello.pdf legendTabloid/dir/legend.pdf score-viola_cello.pdf Shaheed-Particular_Rotations-Viola-Cello.pdf

clean:
	- $(MAKE) clean -C title
	- $(MAKE) clean -C legendTabloid
	- rm score-violins.pdf
	- rm score-viola_cello.pdf

leg:
	# /cygdrive/c/Python27/python.exe "/cygdrive/c/Program\ Files\ \(x86\)/LilyPond/usr/bin/lilypond-book.py" --pdf --output=dir legend.lytex
	/cygdrive/c/Python27/python.exe "C:\Program Files (x86)\LilyPond\usr\bin\lilypond-book.py" --pdf --output=dir legend.lytex
	# /cygdrive/c/Python27/python.exe "C:\Program Files (x86)\LilyPond\usr\bin\lilypond-book.py" --output=dir legend.lytex
	# xelatex.exe -include-directory=DIR dir/legend.tex

legLinux:
	lilypond-book --pdf --output=dir legend.lytex
	cd dir; xelatex legend.tex
