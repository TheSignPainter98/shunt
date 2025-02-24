LUA = luajit

DIAGRAMS = $(shell ls docs/*.dot | sed 's/\.dot$$/.svg/')
SOURCES = $(shell find -name '*.yue')
OBJECTS = $(patsubst %.yue,%.lua,$(SOURCES))
BINARIES = bin/fat bin/goo bin/moonpack bin/nitro

NODE_FONTNAME = C059
EDGE_FONTNAME = $(NODE_FONTNAME)
GRAPHVIZ_OPTS = -Gfontname="$(NODE_FONTNAME)" -Nfontname="$(NODE_FONTNAME)" -Efontname="$(EDGE_FONTNAME)"

all: $(DIAGRAMS) $(BINARIES)
.PHONY: all

docs/%.svg: docs/%.dot Makefile
	./$< $(GRAPHVIZ_OPTS) -Tsvg >$@

define compile_binary
	$(LUA) ./moonpack.lua $< -o $@.lua.packed
	$(LUA) ./nitro.lua $@.lua.packed -o $@
endef

bin/goo: goo.lua
	$(compile_binary)
bin/fat: fat.lua
	$(compile_binary)
bin/moonpack: moonpack.lua
	$(compile_binary)
bin/nitro: nitro.lua
	$(compile_binary)

# define binary
# $1: $1.lua.packed ./nitro.lua
# 	$(LUA) ./nitro.lua $< -o $@
#
# $1.lua.packed: $1.lua ./moonpack.lua
# 	$(LUA) ./moonpack.lua $< -o $@
# endef
# $(binary goo)

fat.lua goo.lua moonpack.lua nitro.lua: $(SOURCES)
	yue -l --target=5.1 .
#
packed/fat: fat.lua moonpack.lua $(SOURCES)
	$(LUA) moonpack.lua $< -o $@

# fat.goo: ./goo.lua $(OBJECTS)
# 	$(LUA) $< ball $@ '*.lua'

clean:
	$(RM) $(DIAGRAMS) $(OBJECTS) startup.lua packed/fat fat.goo $(BINARIES)
.PHONY: clean
