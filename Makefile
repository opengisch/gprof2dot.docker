WORKDIR=/data
PROFILE_FILES = $(wildcard $(WORKDIR)/*.pstat)
PROFILE_FILES_NAMES = $(patsubst %.pstat,%,$(PROFILE_FILES))

%:%.pstat
	@echo target is $@, source is $<
	gprof2dot -f pstats $< | dot -Tpng -o $@.png

.PHONY: render-profiles
render-profiles: $(PROFILE_FILES_NAMES)


.PHONY: clean
clean:
	rm -rf $(WORKDIR)/*.png
