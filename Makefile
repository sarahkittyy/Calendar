BINARY = build/Calendar

SOURCES=$(shell find src/ -name '*.hs')
OBJECTS=$(SOURCES:src/%.hs=obj/%.o)

.PHONY: all
all: dirs $(BINARY)

.PHONY: dirs
dirs:
	rsync -a -f"+ */" -f "- *" src/ obj/
	rsync -a -f"+ */" -f "- *" src/ interface/
	
$(BINARY): $(OBJECTS)
	ghc $^ -o $(BINARY)
	
obj/%.o: src/%.hs
	ghc -hidir interface/ -i'.:interface/' -c $^ -o $@
	
.PHONY: clean
clean:
	rm -rf obj/* interface/* build/*