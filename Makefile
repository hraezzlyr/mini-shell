CC = gcc
CFLAGS = -std=c11 -Wall -Wextra -Wpedantic -Wshadow -Wconversion -g -O0
CPPFLAGS = -D_POSIX_C_SOURCE=200809L

SRC_FILES = src/main.c
OBJECTS_DIR = build/

TARGET_OBJS = $(OBJECTS_DIR)mini-shell.o
TARGET_EXEC = mini-shell

$(TARGET_EXEC): $(TARGET_OBJS)
	$(CC) $^ -o $@

$(TARGET_OBJS): $(SRC_FILES)
	mkdir -p $(OBJECTS_DIR)
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

all: $(TARGET_EXEC)

run: $(TARGET_EXEC)
	./$<

clean:
	rm -rf $(OBJECTS_DIR) $(TARGET_EXEC)

demo:
	$(MAKE) run
	$(MAKE) clean
	
.PHONY: all run clean demo