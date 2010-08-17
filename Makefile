TARGET = procfs
OBJS = procfs.o netfs.o main.o
LIBS = -lnetfs

CC = gcc
CFLAGS = -Wall -g
CPPFLAGS =

CPPFLAGS += -D_GNU_SOURCE -D_FILE_OFFSET_BITS=64

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)

clean:
	$(RM) $(TARGET) $(OBJS)
