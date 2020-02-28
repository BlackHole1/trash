
CURRENT_DATE=$(shell date +"%Y-%m-%d")
SOURCE_FILES=trash.m HGUtils.m HGCLIUtils.m fileSize.m

all: trash

trash: $(SOURCE_FILES)
	@echo
	@echo ---- Compiling:
	@echo ======================================
	$(CC) -O2 -Wall -Wextra -Wpartial-availability -Wno-unguarded-availability -force_cpusubtype_ALL -mmacosx-version-min=10.7 -framework AppKit -framework ScriptingBridge -o $@ $(SOURCE_FILES)

analyze:
	@echo
	@echo ---- Analyzing:
	@echo ======================================
	clang --analyze $(SOURCE_FILES)

clean:
	@echo
	@echo ---- Cleaning up:
	@echo ======================================
	-rm -Rf trash
