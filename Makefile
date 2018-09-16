%.odt: %.md Makefile
    pandoc --standalone -f markdown -t odt -o $@ $<

%.docx: %.md Makefile
    pandoc --standalone -f markdown -t docx -o $@ $<

%.pdf: %.md %.odt
    markdown2pdf -f markdown -o $@ $<

all: doc.docx doc.odt doc.pdf

