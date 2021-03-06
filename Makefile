PNG_TARGET      = js-universe.png
PDF_TARGET      = js-universe.pdf
TARGETS         = $(PNG_TARGET) $(PDF_TARGET)
DOT             = dot
SOURCE_FILE     = js-universe.dot

all: $(TARGETS)

$(PNG_TARGET): $(SOURCE_FILE) Makefile
	$(DOT) -Tpng $(SOURCE_FILE) -o $(PNG_TARGET)

$(PDF_TARGET): $(SOURCE_FILE) Makefile
	$(DOT) -Tpdf $(SOURCE_FILE) -o $(PDF_TARGET)

clean:
	@-rm $(TARGETS)
