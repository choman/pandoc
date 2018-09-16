#!/bin/bash

    ## --filter pandoc-crossref --filter pandoc-citeproc \
     ##--number-sections \
     ##--chapter \
     ##--reference-docx=footer.docx \
pandoc -s --toc \
     --template modified.md \
     --reference-odt=footer.odt \
     --file-scope \
     -N \
     -f markdown \
     -t docx \
     -o doc1.docx \
     title.md section*md
