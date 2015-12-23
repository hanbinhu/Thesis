@echo off
del thesis.pdf >nul 2>nul
if exist thesis.pdf (
	echo Close the file: thesis.pdf!!!
	echo Or use Sumatra to open thesis.pdf
	pause
	exit
)

echo Compile...
echo xelatex -no-pdf thesis...
xelatex -no-pdf thesis
echo biber --debug thesis...
biber --debug thesis
echo xelatex thesis...
xelatex thesis
xelatex thesis
echo clean files...
del *.aux *.run.xml *.bcf *.log *.xdv *.bbl *.bak *.blg *.out *.thm *.toc *.synctex* *.glg *.glo *.gls *.ist *.idx *.ilg *.ind *.acn *.acr *.lof *.lot *.alg *.glsdefs >nul 2>nul
cd tex
del *.aux *.run.xml *.bcf *.log *.xdv *.bbl *.bak *.blg *.out *.thm *.toc *.synctex* *.glg *.glo *.gls *.ist *.idx *.ilg *.ind *.acn *.acr *.lof *.lot *.alg *.glsdefs >nul 2>nul
echo finish...