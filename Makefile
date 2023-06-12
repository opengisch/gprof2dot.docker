PROFILE_FILES = $(wildcard /data/*.prof)
RENDERED_PROFILE_FILES = $(patsubst %.prof,%.png,$(PROFILE_FILES))

$(RENDERED_PROFILE_FILES): $(PROFILE_FILES)
	gprof2dot -f pstats $(patsubst %.png,%.prof,$@) | dot -Tpng -o $@

.PHONY: render-profiles
render-profiles: $(RENDERED_PROFILE_FILES)
