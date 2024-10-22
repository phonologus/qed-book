.SUFFIXES: .adoc .html .pdf
.PHONY: all all-html all-pdf clean

.adoc.html:
	asciidoctor $<

.adoc.pdf:
	asciidoctor-pdf $<

all: all-html all-pdf

all-html: qed-book.html basics.html

all-pdf: qed-book.pdf basics.pdf

clean:
	rm -f *.html *.pdf

