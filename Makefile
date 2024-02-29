CC=gcc
CFLAGS=-Wall -Wextra -Werror
TARGET=my_ngram
OBJS=my_ngram.o

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

ngram.o: my_ngram.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f $(TARGET) $(OBJS)