TEX := xelatex
MAKEINDEX := makeindex

PDF_NAME := notes-on-computing-methods-v1.0
SRC_MAIN := main


$(PDF_NAME).pdf: $(SRC_MAIN).pdf
	cp $< $@

$(SRC_MAIN).pdf: $(SRC_MAIN).tex
	$(TEX) $<
	$(MAKEINDEX) $(SRC_MAIN).idx
	$(TEX) $<

clean:
	git clean -fdx
