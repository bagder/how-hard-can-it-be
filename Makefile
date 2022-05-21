MDS := README.md $(shell grep -o '[a-z0-9/-]\+\.md' SUMMARY.md | grep -v index.md)

all: proselint wordcheck

proselint: 
	@proselint $(MDS)

wordcheck: 
	@./mgrep $(MDS)

wc:
	@wc $(MDS)

epub:
	pandoc -o uncurled.epub --epub-cover-image=uncurled.jpg epub.txt $(MDS)

pdf:
	pandoc -o uncurled.pdf pdf.txt $(MDS)
