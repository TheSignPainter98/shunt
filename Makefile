LUA = luajit

DIAGRAMS = $(shell ls docs/*.dot | sed 's/\.dot$$/.svg/')
SOURCES = $(shell find -name '*.yue')
OBJECTS = $(patsubst %.yue,%.lua,$(SOURCES))
BINARIES = bin/fat bin/goo

NODE_FONTNAME = C059
EDGE_FONTNAME = $(NODE_FONTNAME)
GRAPHVIZ_OPTS = -Gfontname="$(NODE_FONTNAME)" -Nfontname="$(NODE_FONTNAME)" -Efontname="$(EDGE_FONTNAME)"

all: $(DIAGRAMS) $(BINARIES)
.PHONY: all

docs/%.svg: docs/%.dot Makefile
	./$< $(GRAPHVIZ_OPTS) -Tsvg >$@

bin/%: bin/%.lua.packed nitro.lua clap.lua spec.lua
# $(LUA) ./nitro.lua $< -o $@
	cp $< $@

bin/%.lua.packed: %.lua $(OBJECTS) moonpack.lua
	$(LUA) ./moonpack.lua $< -o $@
.INTERMEDIATE: bin/%.lua.packed

%.lua: %.yue
	yue --target=5.1 -l -s $< -o $@
.PRECIOUS: %.lua

clean:
	$(RM) $(DIAGRAMS) $(OBJECTS) startup.lua packed/fat fat.goo $(BINARIES) bin/*
.PHONY: clean

install: scripts/install.sh $(BINARIES)
	./$<
.PHONY: install

uninstall: scripts/uninstall.sh
	./$<
.PHONY: uninstall

fat/version.lua: .FORCE
.FORCE:
.PHONY: .FORCE
