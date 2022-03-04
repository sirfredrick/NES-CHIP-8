.POSIX:
.SUFFIXES:
AS=ca65
LD=ld65
LDFLAGS=-C
chip.nes: chip.o nrom128.x
	$(LD) $(LDFLAGS) nrom128.x chip.o -o $@

chip.o: chip.s chip.lst pong.ch8
	$(AS) chip.s -l chip.lst -o $@

clean:
	-rm *.o *.nes
