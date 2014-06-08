# generic targets for reconsituting files
define run-jigdo
jigdo-file make-image -i $@ -t $(firstword $^).template -j $(firstword $^).jigdo $(firstword $^)
endef

%.wim : % %.jigdo %.template
	$(run-jigdo)

%.swm : % %.jigdo %.template
	$(run-jigdo)

%.iso : % %.jigdo %.template
	$(run-jigdo)

%.efs.img : % %.jigdo %.template
	$(run-jigdo)

%.tar : % %.jigdo %.template
	$(run-jigdo)

%.tardist : % %.jigdo %.template
	$(run-jigdo)

# generic rules - relies on Objects.mk
all : $(OBJECTS)

clean : 
	-rm $(OBJECTS)
