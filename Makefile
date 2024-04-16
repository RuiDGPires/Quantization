C_FILES:=$(wildcard src/*.c)
H_FILES:=$(wildcard src/*.h)
BUILD_DIR:=build/
TARGET:=quantization
CC:=gcc
FLAGS:= --pedantic -Wall

.PHONY: default
default: $(BUILD_DIR)/$(TARGET)

%/:
	mkdir -p $@

$(BUILD_DIR)/$(TARGET): $(C_FILES) $(H_FILES) | $(BUILD_DIR)
	$(CC) $(FLAGS) $(C_FILES) -o $@

.PHONY: processed
processed: processed.cpp 

processed.cpp: $(C_FILES) $(H_FILES)
	$(CC) -E $(C_FILES) -o $@

.PHONY: clean
clean:
	rm -fr $(BUILD_DIR)
	rm -f processed.cpp
