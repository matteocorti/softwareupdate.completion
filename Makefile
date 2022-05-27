COMPLETIONS_DIR := $(shell pkg-config --variable=completionsdir bash-completion)

clean:
	rm *~

install:
ifdef COMPLETIONS_DIR
	cp softwareupdate.completion $(COMPLETIONS_DIR)/softwareupdate
else
	echo "Cannot determine the installation directory for bash completion scripts"
endif

.PHONY: install clean
