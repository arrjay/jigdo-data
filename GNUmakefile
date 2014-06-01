# Only tested under GNU make!

# Go-encrypt-something target
%.gpg : %
	gpg -r 2EFA9C77 --encrypt $(firstword $^)

# Generic go-make-something target
% :
	$(MAKE) -C $(@D) -I $(CURDIR)/GMk $(@F)

# Generic go clean-something target
%.clean : %
	$(MAKE) -C $(@D) -I $(CURDIR)/GMk clean

# Generic go-make-everything target
%.all : %
	$(MAKE) -C $(@D) -I $(CURDIR)/GMk all

# directory objects are defined here
BEOS5		:= 3rdparty/BeOS/5.0.3Pro/
NB_COBALT	:= 3rdparty/NetBSD-cobalt/
DARWIN		:= apple/Darwin/
IE		:= microsoft/internet_explorer/
ALL		:= $(BEOS5) $(NB_COBALT) $(DARWIN) $(IE)

# recursive assembly, clean ops
RECURSIVE_CLEAN = $(patsubst %,%.clean,$(ALL))
RECURSIVE_ASSEMBLE = $(patsubst %,%.all,$(ALL))

clean-recursive : $(RECURSIVE_CLEAN)
	@true

all-recursive : $(RECURSIVE_ASSEMBLE)
	@true

# handy targets
BeOS5 : $(BEOS5)/GNUmakefile $(BEOS5)/.all
	@true
