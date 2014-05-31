# generic targets for reconsituting files
define run-jigdo
jigdo-file make-image -i $@ -t $(firstword $^).template -j $(firstword $^).jigdo $(firstword $^)
endef

%.wim : % %.jigdo %.template
	$(run-jigdo)

%.iso : % %.jigdo %.template
	$(run-jigdo)
