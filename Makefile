LUA = luajit

DIAGRAM_NAMES = marshal-main marshal-resource_orchestrator marshal-schedule_generator marshal-scheduler upgrade_listener config_listener
DIAGRAMS = $(patsubst %,docs/src/reference-materials/%.mmd,$(DIAGRAM_NAMES))
SOURCES = $(shell find -name '*.yue')
OBJECTS = $(patsubst %.yue,%.lua,$(SOURCES))
BINARIES = bin/ox bin/goo bin/snoop

NODE_FONTNAME = C059
EDGE_FONTNAME = $(NODE_FONTNAME)
GRAPHVIZ_OPTS = -Gfontname="$(NODE_FONTNAME)" -Nfontname="$(NODE_FONTNAME)" -Efontname="$(EDGE_FONTNAME)"

all: $(BINARIES)
.PHONY: all

docs: $(DIAGRAMS)
	mdbook build docs/
.PHONY: doc

docs/src/reference-materials/%.mmd: $(OBJECTS)
	luajit ox.lua debug mermaid $(patsubst docs/src/reference-materials/%.mmd,%,$@) >$@

# docs/src/reference-materials/marshal.mmd: ox/nodes/marshal/main.yue ox.lua $(OBJECTS)
# 	$(LUA) ox.lua debug mermaid marshal/main >$@

serve-docs: $(DIAGRAMS)
	mdbook serve docs/ --open
.PHONY: serve-doc

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

ox.yue: compat.lua

clean:
	$(RM) $(OBJECTS) startup.lua packed/ox ox.goo $(BINARIES) bin/*
.PHONY: clean

install: scripts/install $(BINARIES)
	./$<
.PHONY: install

uninstall: scripts/uninstall
	./$<
.PHONY: uninstall

test: test_ox test_ylint
.PHONY: test

test_ox: ox.lua $(OBJECTS)
	@$(LUA) $< test
.PHONY: test_ox

test_ylint: ylint.lua
	@$(LUA) ylint.lua test
.PHONY: test_ylint

ox/version.lua: .version.txt

.version.txt: scripts/version .FORCE
	./$< > $@

.FORCE:
.PHONY: .FORCE

release: bin/ox ./scripts/release bin/snoop
	./scripts/release bin/ox
	./scripts/release bin/snoop
.PHONY: release
