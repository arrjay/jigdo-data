# Only tested under GNU make!

# Go-encrypt-something target
%.gpg : %
	gpg -r 2EFA9C77 --encrypt $(firstword $^)

# Generic go-make-something target
% :
	$(MAKE) -C $(@D) -I $(CURDIR)/GMk $(@F)

# Weird Targets
BeOS5Pro : 3rdparty/BeOS/5.0.3Pro/track1.iso 3rdparty/BeOS/5.0.3Pro/track2.x86.be 3rdparty/BeOS/5.0.3Pro/track3.ppc.be
	@echo "Track dependencies assembled, you must run cdrdao against 3rdparty/BeOS/5.0.3Pro/BeOS-R5.0.3.toc"
