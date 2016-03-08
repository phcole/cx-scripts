SOURCE = src
BUILD = bin

all: out_dir $(BUILD)/gecko-cleaner

$(BUILD)/gecko-cleaner: $(SOURCE)/gecko-cleaner.go
	go build -o $@ -ldflags "-s -w" $^
	strip -s $@

.PHONY: out_dir clean

out_dir:
	@if [ ! -d "$(BUILD)" ]; then mkdir -p $(BUILD); fi

clean:
	rm $(BUILD)/*
