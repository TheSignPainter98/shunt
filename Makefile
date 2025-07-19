LUA = luajit

DIAGRAM_NAMES = marshal-main marshal-resource_orchestrator marshal-scheduler marshal-schedule_generator marshal-schedule_generator_impl upgrade_listener config_listener
DIAGRAMS = $(patsubst %,docs/src/reference-materials/state-machine-diagrams/%.mmd,$(DIAGRAM_NAMES))
DOCS_HELPERS = docs/mdbook-shunt/target/release/mdbook-shunt
SITE_SRCS = $(DIAGRAMS) $(DOCS_HELPERS) .version.txt docs/src/shunt docs/src/libshunt.lua
RUST_SOURCES = $(shell find docs/mdbook-shunt/src/ -name '*.rs')
SOURCES = $(shell find -name '*.yue')
OBJECTS = $(patsubst %.yue,%.lua,$(SOURCES))
BINARIES = bin/shunt bin/goo bin/snoop

NODE_FONTNAME = C059
EDGE_FONTNAME = $(NODE_FONTNAME)
GRAPHVIZ_OPTS = -Gfontname="$(NODE_FONTNAME)" -Nfontname="$(NODE_FONTNAME)" -Efontname="$(EDGE_FONTNAME)"

all: $(BINARIES)
.PHONY: all

site: $(SITE_SRCS)
	mdbook build docs/
.PHONY: site

docs/src/reference-materials/state-machine-diagrams/%.mmd: $(OBJECTS)
	mkdir -p docs/src/reference-materials/state-machine-diagrams/
	luajit shunt.lua debug mermaid $(patsubst docs/src/reference-materials/state-machine-diagrams/%.mmd,%,$@) >$@

serve-site: $(SITE_SRCS)
	mdbook serve docs/ --open
.PHONY: serve-site

docs/mdbook-shunt/target/release/mdbook-shunt: docs/mdbook-shunt/Cargo.toml $(RUST_SOURCES)
	cargo build --release --manifest-path $<

docs/src/libshunt.lua: bin/libshunt.lua
	cp $< $@

docs/src/shunt: bin/shunt
	cp $< $@

bin/% bin/%.lua: bin/%.lua.packed nitro.lua clap.lua spec.lua
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

shunt.yue: shunt/compat.lua

clean:
	$(RM) $(OBJECTS) startup.lua packed/shunt shunt.goo $(BINARIES) bin/*
	cargo clean --manifest-path docs/mdbook-shunt/Cargo.toml
	mdbook clean docs/
.PHONY: clean

install: scripts/install $(BINARIES)
	./$<
.PHONY: install

uninstall: scripts/uninstall
	./$<
.PHONY: uninstall

test: test_shunt test_ylint
.PHONY: test

test_shunt: shunt.lua $(OBJECTS)
	@$(LUA) $< test
.PHONY: test_shunt

test_ylint: ylint.lua
	@$(LUA) ylint.lua test
.PHONY: test_ylint

shunt/version.lua: .version.txt

.version.txt: scripts/version .FORCE
	./$< > $@

.FORCE:
.PHONY: .FORCE

release: bin/shunt ./scripts/release bin/snoop
	./scripts/release bin/shunt
	./scripts/release bin/snoop
.PHONY: release
