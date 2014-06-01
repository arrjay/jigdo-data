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
BEOS5	:= 3rdparty/BeOS/5.0.3Pro/
ALL	:= $(BEOS5)

RECURSIVE_CLEAN = $(patsubst %,%.clean,$(ALL))
RECURSIVE_ASSEMBLE = $(patsubst %,%.all,$(ALL))

BeOS5 : $(BEOS5)/GNUmakefile
	$(MAKE) -C $(BEOS5) -I $(CURDIR)/GMk all

clean-recursive : $(RECURSIVE_CLEAN)
	echo $(RECURSIVE_CLEAN)

all-recursive : $(RECURSIVE_ASSEMBLE)
	echo $(RECURSIVE_ASSEMBLE)
