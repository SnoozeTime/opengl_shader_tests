bin_PROGRAMS = myprogram
myprogram_SOURCES = \
	src/main.c \
	src/glad.c
AM_CFLAGS = -Wl,--no-as-needed -I$(top_srcdir)/include @gllibs_CFLAGS@
AM_LDFLAGS = @gllibs_LIBS@ -lm -ldl
