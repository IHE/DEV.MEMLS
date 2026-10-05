OUTPUT_DIR = output
SRC_DIR = AsciiDoc_Source
MAIN = $(SRC_DIR)/main.adoc

.PHONY: all html pdf clean docker-html docker-pdf

all: html pdf

html: $(OUTPUT_DIR)
	asciidoctor \
		-b html5 \
		-D $(OUTPUT_DIR) \
		-o index.html \
		$(MAIN)

pdf: $(OUTPUT_DIR)
	asciidoctor-pdf \
		-D $(OUTPUT_DIR) \
		-o supplement.pdf \
		$(MAIN)

$(OUTPUT_DIR):
	mkdir -p $(OUTPUT_DIR)

clean:
	rm -rf $(OUTPUT_DIR)

# Docker variants (no local install needed)
docker-html: $(OUTPUT_DIR)
	docker run --rm -v "$(PWD)":/documents/ asciidoctor/docker-asciidoctor \
		asciidoctor -b html5 -D /documents/$(OUTPUT_DIR) -o index.html /documents/$(MAIN)

docker-pdf: $(OUTPUT_DIR)
	docker run --rm -v "$(PWD)":/documents/ asciidoctor/docker-asciidoctor \
		asciidoctor-pdf -D /documents/$(OUTPUT_DIR) -o supplement.pdf /documents/$(MAIN)
