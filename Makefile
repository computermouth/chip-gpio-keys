GCC?=gcc
DTC?=dtc
DTC_OPTIONS?=-@

OBJECTS:= $(patsubst %.dts,%.dtbo,$(wildcard firmware/*.dts))

%.pre.dts: %.dts
	$(GCC) -E -nostdinc -I$(CURDIR) -x assembler-with-cpp -undef -o $@ $^

%.dtbo: %.pre.dts
	$(DTC) $(DTC_OPTIONS) -I dts -O dtb -o $@ $^

all: $(OBJECTS)

clean:
	rm -f $(OBJECTS)
