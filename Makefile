SRC_DIR=lib
BUILD_DIR=build
HSQ_SRC=$(SRC_DIR)/hsq.cpp
HSQ=$(BUILD_DIR)/hsq

all: install

install: $(HSQ)

clean:
	rm -rf lib
	rm -rf build

$(HSQ): $(HSQ_SRC)
	mkdir -p $(BUILD_DIR)
	g++ $(HSQ_SRC) -o $(HSQ)

$(HSQ_SRC):
	mkdir -p $(SRC_DIR)
	curl http://mazonka.com/subleq/hsq.cpp > $(HSQ_SRC)

.PHONY: clean
