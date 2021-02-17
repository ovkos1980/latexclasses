pdflatex %1

rem @echo off
rem IF (%1)==() GOTO end
FOR %%f IN (*.aux) DO bibtex %%f
:end

pdflatex %1
del *.aux
del *.bbl
del *.blg