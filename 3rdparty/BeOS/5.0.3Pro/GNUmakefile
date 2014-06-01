-include jigdo.mk
include Objects.mk

all : $(OBJECTS)

track2.x86.be : track2.x86
	$(run-jigdo)
track3.ppc.be : track3.ppc
	$(run-jigdo)

clean : 
	-rm $(OBJECTS)
