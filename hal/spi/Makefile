SOURCES=$(wildcard *.c)
OBJECTS=$(SOURCES:.c=.o)

.PHONY: clean
clean:
	rm -f *.o

.PHONY: compile
compile: $(OBJECTS)

.c.o:
	$(CC) $(CFLAGS) -c $< -o $@
