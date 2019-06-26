To compile .md files to .pdf:

```
pandoc -N --template=template.tex --variable mainfont="Palatino" --variable sansfont="Helvetica" --variable monofont="Menlo" --variable fontsize=12pt -V geometry:margin=1in --variable headertext:"Programming Concepts \texttt{https://github.com/nuitrcs/programming-concepts}" combined.md -o combined.pdf


```


