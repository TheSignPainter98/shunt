DIAGRAMS = $(shell ls docs/*.dot | sed 's/\.dot$$/.svg/')

GRAPHVIZ_TOOL = sfdp

NODE_FONTNAME = C059
EDGE_FONTNAME = $(NODE_FONTNAME)
GRAPHVIZ_OPTS = -Gfontname="$(NODE_FONTNAME)" -Nfontname="$(NODE_FONTNAME)" -Efontname="$(EDGE_FONTNAME)"

all: $(DIAGRAMS) fat.lua
.PHONY: all

docs/%.svg: docs/%.dot Makefile
	./$< $(GRAPHVIZ_OPTS) -Tsvg >$@

clean:
	$(RM) $(DIAGRAMS)
.PHONY: clean
