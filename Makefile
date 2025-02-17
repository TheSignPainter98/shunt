LUA = luajit

DIAGRAMS = $(shell ls docs/*.dot | sed 's/\.dot$$/.svg/')
SOURCES = $(shell find -name '*.yue')
OBJECTS = $(patsubst %.yue,%.lua,$(SOURCES))

NODE_FONTNAME = C059
EDGE_FONTNAME = $(NODE_FONTNAME)
GRAPHVIZ_OPTS = -Gfontname="$(NODE_FONTNAME)" -Nfontname="$(NODE_FONTNAME)" -Efontname="$(EDGE_FONTNAME)"

all: $(DIAGRAMS) packed/fat
.PHONY: all

docs/%.svg: docs/%.dot Makefile
	./$< $(GRAPHVIZ_OPTS) -Tsvg >$@

fat.lua: $(SOURCES)
	yue -l --target=5.1 .

packed/fat: fat.lua moonpack.lua $(SOURCES)
	$(LUA) moonpack.lua $< -o $@

# fat.goo: ./goo.lua $(OBJECTS)
# 	$(LUA) $< ball $@ '*.lua'

clean:
	$(RM) $(DIAGRAMS) $(OBJECTS) startup.lua packed/fat fat.goo
.PHONY: clean
