CC  = arm-linux-androideabi-gcc --sysroot=$(SYSROOT)
CPP  = arm-linux-androideabi-g++ --sysroot=$(SYSROOT)
CFLAGS  = -Wall -g
LDFLAGS = -llog
TARGET	= cam
SRCDIRS	=./
SRC	= $(foreach dir,$(SRCDIRS),$(wildcard $(dir)/*.c))
OBJ  	:= $(SRC:%.c=%.o)
LIBS += -L./ -lm -lstdc++ -law_h264enc -lcedarv -lcedarxosal
 
all: $(SRC) $(TARGET)
 
$(TARGET): $(OBJ)
	$(CPP) -o $@ $^ $(LDFLAGS) $(LIBS)
 
%.o: %.c
	$(CC) -o $@ -c $< $(CFLAGS)
 
clean:
	rm -f *.o $(TARGET)

