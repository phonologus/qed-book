.SUFFIXES: .adoc .html .pdf
.PHONY: all clean

.adoc.html:
	asciidoctor $<

.adoc.pdf:
	asciidoctor-pdf $<

all: qed-book.html qed-book.pdf

clean:
	rm -f qed-book.html qed-book.pdf

