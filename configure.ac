AC_INIT([opengltest],[1.0],[benoit.eudier@gmail.com])
AC_CONFIG_SRCDIR([src/main.c])
AM_INIT_AUTOMAKE([foreign subdir-objects])
AM_MAINTAINER_MODE([enable])

AC_PROG_CC

PKG_CHECK_MODULES([gllibs], [gl glfw3 >= 3.0])

AC_CONFIG_HEADERS([config.h])
AC_CONFIG_FILES([Makefile])
AC_OUTPUT
