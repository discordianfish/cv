THEME ?= paper
TMP   := $(shell mktemp --suffix=.html)

index.html: resume.json
	resume export $(TMP) -t $(THEME)
	grep -v 'Check out new print view' $(TMP) > $@
	rm $(TMP)
