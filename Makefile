# Makefile

build_dir := build

.PHONY: all clean run

all: $(build_dir)/Makefile
	$(MAKE) -C $(build_dir)

$(build_dir)/Makefile: CMakeLists.txt
	mkdir -p $(build_dir)
	cd $(build_dir) && cmake ..

clean:
	rm -rf $(build_dir) bin

run: all
	./bin/lox
