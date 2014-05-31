-include jigdo.mk

all : track1.iso track2.x86.be track3.ppc.be

track2.x86.be : track2.x86
	$(run-jigdo)
track3.ppc.be : track3.ppc
	$(run-jigdo)

clean : 
	rm track1.iso track2.x86.be track3.ppc.be
