export CC=gcc
export CFLAGS=-Wall -Os -Werror -Wextra -std=c99

SOURCES=$(wildcard *.c)
OBJECTS=$(SOURCES:.c=.o)

.PHONY: all
all: clean compile link

.PHONY: clean
clean:
	rm -f *.o application
	$(MAKE) -C hal clean

.c.o:
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: compile
compile: $(OBJECTS)
	$(MAKE) -C hal compile

.PHONY: link
link:
	$(CC) $(CFLAGS) $(shell find . -name '*.o') -o application
	chmod +x application 2>&1
