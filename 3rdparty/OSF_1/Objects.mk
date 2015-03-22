OBJECTS	= 4.0b.ufs 4.0b_docs.ufs

4.0b.ufs : 4.0b
	$(run-jigdo)

4.0b_docs.ufs : 4.0b_docs
	$(run-jigdo)
