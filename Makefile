LUA = luajit

DIAGRAMS = $(shell ls docs/*.dot | sed 's/\.dot$$/.svg/')
SOURCES = $(wildcard *.yue)
OBJECTS = $(patsubst %.yue,%.lua,$(SOURCES))

NODE_FONTNAME = C059
EDGE_FONTNAME = $(NODE_FONTNAME)
GRAPHVIZ_OPTS = -Gfontname="$(NODE_FONTNAME)" -Nfontname="$(NODE_FONTNAME)" -Efontname="$(EDGE_FONTNAME)"

all: $(DIAGRAMS) fat.lua fat.goo
.PHONY: all

docs/%.svg: docs/%.dot Makefile
	./$< $(GRAPHVIZ_OPTS) -Tsvg >$@

fat.lua: $(SOURCES)
	yue --target=5.1 .

fat.goo: ./goo.lua $(OBJECTS)
	$(LUA) $< ball $@ '*.lua'

clean:
	$(RM) $(DIAGRAMS) $(OBJECTS) startup.lua fat.goo
.PHONY: clean
