# Only tested under GNU make!

# Go-encrypt-something target
%.gpg : %
	gpg -r 2EFA9C77 --encrypt $(firstword $^)

# Generic go-make-something target
% :
	$(MAKE) -C $(@D) -I $(CURDIR)/GMk $(@F)

# Generic go clean-something target
%.clean : %
	$(MAKE) -C $(@D) -I $(CURDIR)/GMk -f Objects.mk -f $(CURDIR)/GMk/standard.mk clean

# Generic go-make-everything target - can be overridden with a per-target GNUmakefile
%.all : %/Objects.mk
	$(MAKE) -C $(@D) -I $(CURDIR)/GMk -f Objects.mk -f $(CURDIR)/GMk/standard.mk all

# directory objects are defined here
BEOS5		= 3rdparty/BeOS/5.0.3Pro/
NB_COBALT	= 3rdparty/NetBSD-cobalt/
DARWIN		= apple/Darwin/
IE		= microsoft/internet_explorer/
OSF1		= 3rdparty/OSF_1/
IRIX65		= sgi/irix/6.5/
IRIX62		= sgi/irix/6.2/
ENLIGHTENDSM	= sgi/enlightendsm/
SGI_HOTMIX	= sgi/hotmix/
SGI_SNMP	= sgi/snmp/
NT31		= microsoft/windows/NT3/
NT4		= microsoft/windows/NT4/
WIN2K		= microsoft/windows/2000/
ALL		:= $(BEOS5) $(NB_COBALT) $(DARWIN) $(IE) $(OSF1) $(IRIX65) $(IRIX62) \
$(ENLIGHTENDSM) $(SGI_HOTMIX) $(SGI_SNMP) \
$(NT31) $(NT4) $(WIN2K)

# recursive assembly, clean ops
RECURSIVE_CLEAN = $(patsubst %,%.clean,$(ALL))
RECURSIVE_ASSEMBLE = $(patsubst %,%.all,$(ALL))

clean-recursive : $(RECURSIVE_CLEAN)
	@true

all-recursive : $(RECURSIVE_ASSEMBLE)
	@true

# handy targets
BeOS5 : $(BEOS5)/.all
	@true
