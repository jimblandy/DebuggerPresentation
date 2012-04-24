SNF = $(sort $(wildcard snf-*.svg))
snf-all.pdf: $(SNF:%.svg=%.pdf)
	pdfunite $^ $@

%.pdf: %.svg
	inkscape --export-area-page --export-pdf=$@ $<
