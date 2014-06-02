OBJECTS	:= track1.iso track2.x86.be track3.ppc.be

# custom rules
track2.x86.be : track2.x86
	$(run-jigdo)
track3.ppc.be : track3.ppc
	$(run-jigdo)
