SOURCE = src
BUILD = bin

all: gecko_cleaner

out_dir:
	@if [ ! -d $(BUILD) ]; then mkdir -p $(BUILD); fi

gecko_cleaner: out_dir $(SOURCE)/gecko-cleaner.go
	go build -o $(BUILD)/gecko-cleaner -ldflags "-s -w" $(SOURCE)/gecko-cleaner.go
	strip -s $(BUILD)/gecko-cleaner

.PHONY:clean
clean:
	rm $(BUILD)/*
