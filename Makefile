.PHONY: default harvard clean

default: clean
	sed -i.bak 's/\\documentclass\[[a-z]*\]{resume}/\\documentclass[default]{resume}/' main.tex
	pdflatex -shell-escape main.tex
	pdflatex -shell-escape main.tex
	mv main.tex.bak main.tex
	rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz
	rm -rf svg-inkscape/

harvard: clean
	sed -i.bak 's/\\documentclass\[[a-z]*\]{resume}/\\documentclass[harvard]{resume}/' main.tex
	pdflatex -shell-escape main.tex
	pdflatex -shell-escape main.tex
	mv main.tex.bak main.tex
	rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz
	rm -rf svg-inkscape/

clean:
	rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz *.pdf
	rm -rf svg-inkscape/
