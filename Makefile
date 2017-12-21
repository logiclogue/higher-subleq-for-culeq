SRC_DIR=lib
BUILD_DIR=build
HSQ_SRC=$(SRC_DIR)/hsq.cpp
HSQ_BUILD=$(BUILD_DIR)/hsq

all: install

install: $(HSQ_BUILD)

clean:
	rm -rf lib
	rm -rf build

$(HSQ_BUILD): $(HSQ_SRC)
	mkdir -p $(BUILD_DIR)
	g++ $(HSQ_SRC) -o $(HSQ_BUILD)

$(HSQ_SRC):
	mkdir -p $(SRC_DIR)
	curl http://mazonka.com/subleq/hsq.cpp > $(HSQ_SRC)

.PHONY: clean
