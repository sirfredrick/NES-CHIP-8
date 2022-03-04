.POSIX:
.SUFFIXES:
AS=ca65
LD=ld65
LDFLAGS=-C
chip.nes: chip.o nrom128.x
	$(LD) $(LDFLAGS) nrom128.x chip.o -o $@

chip.o: chip.s pong.ch8
	$(AS) chip.s -o $@

clean:
	-rm *.o *.nes
