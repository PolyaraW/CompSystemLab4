.PHONY: all clean debug

ASFLAGS = 
LDFLAGS = --static

all: exit

debug: ASFLAGS += --gdwarf-2
debug: lab4

exit:
	as $(ASFLAGS) -o exit.o -c exit.s
	ld $(LDFLAGS) -o exit exit.o

lab4:
	as $(ASFLAGS) -o lab4.o -c lab4.s
	ld $(LDFLAGS) -o lab4 lab4.o

clean:
	rm -f exit exit.o
	rm -f lab4 lab4.o
