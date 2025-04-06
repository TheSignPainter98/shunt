LUA = luajit

DIAGRAMS = $(shell ls docs/*.dot | sed 's/\.dot$$/.svg/')
SOURCES = $(shell find -name '*.yue')
OBJECTS = $(patsubst %.yue,%.lua,$(SOURCES))
BINARIES = bin/freight bin/goo

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

%.lua: %.yue ylint.yue
	yue --target=5.1 -l -s --path="?.yue" $< -o $@
	@if [ "$<" != "ylint.yue" ]; then yue -e ylint.yue check $<; fi
	@touch $@
.PRECIOUS: %.lua

freight.yue: compat.lua

clean:
	$(RM) $(DIAGRAMS) $(OBJECTS) startup.lua packed/freight freight.goo $(BINARIES) bin/*
.PHONY: clean

install: scripts/install $(BINARIES)
	./$<
.PHONY: install

uninstall: scripts/uninstall
	./$<
.PHONY: uninstall

test: test_freight test_ylint
.PHONY: test

test_freight: freight.lua $(OBJECTS)
	@$(LUA) $< test
.PHONY: test_freight

test_ylint: ylint.lua
	@$(LUA) ylint.lua test
.PHONY: test_ylint

freight/version.lua: .version.txt

.version.txt: scripts/version .FORCE
	./$< > $@

.FORCE:
.PHONY: .FORCE

release: bin/freight ./scripts/release
	./scripts/release $<
.PHONY: release
