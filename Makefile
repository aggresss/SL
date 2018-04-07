#==========================================
#    Makefile: makefile for sl
#	Copyright 1993,1998 Toyoda Masashi 
#		(toyoda@is.titech.ac.jp)
#	Last Modified: 1998/ 7/22
#       Modify for Debian by Hiroyuki Yamamoto <yama1066@gmail.com>
#         2008/12/27
#==========================================
# sudo apt-get install build-essential libncurses5-dev gdb

all: sl sl-h

sl: sl.c sl.h
	$(CC) $(CFLAGS) -o sl sl.c -lcurses $(LDFLAGS)

sl-h: sl-h.c sl-h.h header.h
	$(CC) $(CFLAGS) -o sl-h sl-h.c -lcurses $(LDFLAGS)

clean::
	rm -f sl sl-h

distclean:: clean
