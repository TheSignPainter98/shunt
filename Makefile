LUA = luajit

DIAGRAMS = $(shell ls docs/*.dot | sed 's/\.dot$$/.svg/')
SOURCES = $(shell find -name '*.yue')
OBJECTS = $(patsubst %.yue,%.lua,$(SOURCES))
BINARIES = bin/fat bin/goo bin/moonpack bin/nitro nitro.lua moonpack.lua

NODE_FONTNAME = C059
EDGE_FONTNAME = $(NODE_FONTNAME)
GRAPHVIZ_OPTS = -Gfontname="$(NODE_FONTNAME)" -Nfontname="$(NODE_FONTNAME)" -Efontname="$(EDGE_FONTNAME)"

all: $(DIAGRAMS) $(BINARIES)
.PHONY: all

docs/%.svg: docs/%.dot Makefile
	./$< $(GRAPHVIZ_OPTS) -Tsvg >$@

bin/%: %.lua $(OBJECTS) moonpack.lua nitro.lua
	$(LUA) ./moonpack.lua $< -o $@.lua.packed
	$(LUA) ./nitro.lua $@.lua.packed -o $@

%.lua: %.yue
	yue --target=5.1 -l -s $< -o $@
.PRECIOUS: %.lua

clean:
	$(RM) $(DIAGRAMS) $(OBJECTS) startup.lua packed/fat fat.goo $(BINARIES)
.PHONY: clean
