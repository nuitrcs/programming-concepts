To compile .md files to .pdf:

```
rm combined.pdf
for f in *.md; do pandoc "$f" -f markdown -s -o "${f%.md}".pdf -V geometry:margin=0.75in; done
rm readme.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dAutoRotatePages=/None -sOutputFile=combined.pdf files.pdf datatypes.pdf variables.pdf lists.pdf control.pdf functions.pdf
```