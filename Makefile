#----------------------------------------------------------------------------
OUT_NAME    := spiled
OUT_DIR     := .
CLEAN_FILES := "$(OUT_DIR)/$(OUT_NAME).exe" a.out data.txt
#----------------------------------------------------------------------------
# 1-st way to select source files
SRCS := spiled.c spi.c stimer.c sgpio.c

HDRS := spi.h stimer.h sgpio.h

# 2-nd way to select source files
#SRC_DIRS := .
#HDR_DIRS := .
#----------------------------------------------------------------------------
#DEFS   := -DSPI_DEBUG -DSGPIO_DEBUG
#OPTIM  := -g -O0
DEFS    := 
OPTIM   := -Os
WARN    := -Wall -Wno-pointer-to-int-cast
CFLAGS  := $(WARN) $(OPTIM) $(DEFS) $(CFLAGS) -pipe
LDFLAGS := -lm -lrt $(LDFLAGS)
PREFIX  := /usr/local
#----------------------------------------------------------------------------
#_AS  := @as
#_CC  := @gcc
#_CXX := @g++
#_LD  := @gcc

#_CC  := @clang
#_CXX := @clang++
#_LD  := @clang
#----------------------------------------------------------------------------
include Makefile.skel
#----------------------------------------------------------------------------

