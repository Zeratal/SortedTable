#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC = -Iinc -Icommon/src
CFLAGS = -Wall
RESINC = 
LIBDIR = 
LIB = -lpthread -lcrypto -lhiredis
LDFLAGS = 

INC_DEBUG = $(INC)
CFLAGS_DEBUG = $(CFLAGS) -g -E -P
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR)
LIB_DEBUG = $(LIB)
LDFLAGS_DEBUG = $(LDFLAGS)
OBJDIR_DEBUG = obj/Debug
DEP_DEBUG = 
OUT_DEBUG = bin/Debug/st_test

INC_RELEASE = $(INC)
CFLAGS_RELEASE = $(CFLAGS) -O2
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE = $(LDFLAGS) -s
OBJDIR_RELEASE = obj/Release
DEP_RELEASE = 
OUT_RELEASE = bin/Release/st_test

OBJ_DEBUG = $(OBJDIR_DEBUG)/src/SizeBuffer.o $(OBJDIR_DEBUG)/src/Anniversary.o $(OBJDIR_DEBUG)/src/ClosedRange.o $(OBJDIR_DEBUG)/src/Crc32.o $(OBJDIR_DEBUG)/src/Date.o $(OBJDIR_DEBUG)/src/DateTime.o $(OBJDIR_DEBUG)/src/DstTransitionTime.o $(OBJDIR_DEBUG)/src/File.o $(OBJDIR_DEBUG)/src/FileMapping.o $(OBJDIR_DEBUG)/src/KeyValue.o $(OBJDIR_DEBUG)/src/LocalDateTime.o $(OBJDIR_DEBUG)/src/Lock.o $(OBJDIR_DEBUG)/src/NonBlocking.o $(OBJDIR_DEBUG)/src/Path.o $(OBJDIR_DEBUG)/src/RefCounter.o $(OBJDIR_DEBUG)/src/SizeString.o $(OBJDIR_DEBUG)/src/SizedBuffer.o $(OBJDIR_DEBUG)/src/SizedString.o $(OBJDIR_DEBUG)/src/SortedTable.o $(OBJDIR_DEBUG)/src/SpinLock.o $(OBJDIR_DEBUG)/src/StringBuilder.o $(OBJDIR_DEBUG)/src/Table.o $(OBJDIR_DEBUG)/src/TableFile.o $(OBJDIR_DEBUG)/src/TimeInterval.o $(OBJDIR_DEBUG)/src/TimeZone.o $(OBJDIR_DEBUG)/src/U64.o $(OBJDIR_DEBUG)/src/U64B.o $(OBJDIR_DEBUG)/src/U64F.o $(OBJDIR_DEBUG)/src/main.o

OBJ_RELEASE = $(OBJDIR_RELEASE)/src/SizeBuffer.o $(OBJDIR_RELEASE)/src/Anniversary.o $(OBJDIR_RELEASE)/src/ClosedRange.o $(OBJDIR_RELEASE)/src/Crc32.o $(OBJDIR_RELEASE)/src/Date.o $(OBJDIR_RELEASE)/src/DateTime.o $(OBJDIR_RELEASE)/src/DstTransitionTime.o $(OBJDIR_RELEASE)/src/File.o $(OBJDIR_RELEASE)/src/FileMapping.o $(OBJDIR_RELEASE)/src/KeyValue.o $(OBJDIR_RELEASE)/src/LocalDateTime.o $(OBJDIR_RELEASE)/src/Lock.o $(OBJDIR_RELEASE)/src/NonBlocking.o $(OBJDIR_RELEASE)/src/Path.o $(OBJDIR_RELEASE)/src/RefCounter.o $(OBJDIR_RELEASE)/src/SizeString.o $(OBJDIR_RELEASE)/src/SizedBuffer.o $(OBJDIR_RELEASE)/src/SizedString.o $(OBJDIR_RELEASE)/src/SortedTable.o $(OBJDIR_RELEASE)/src/SpinLock.o $(OBJDIR_RELEASE)/src/StringBuilder.o $(OBJDIR_RELEASE)/src/Table.o $(OBJDIR_RELEASE)/src/TableFile.o $(OBJDIR_RELEASE)/src/TimeInterval.o $(OBJDIR_RELEASE)/src/TimeZone.o $(OBJDIR_RELEASE)/src/U64.o $(OBJDIR_RELEASE)/src/U64B.o $(OBJDIR_RELEASE)/src/U64F.o $(OBJDIR_RELEASE)/src/main.o

all: debug release

clean: clean_debug clean_release

before_debug: 
	test -d bin/Debug || mkdir -p bin/Debug
	test -d $(OBJDIR_DEBUG)/src || mkdir -p $(OBJDIR_DEBUG)/src

after_debug: 

debug: before_debug out_debug after_debug

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LIBDIR_DEBUG) -o $(OUT_DEBUG) $(OBJ_DEBUG)  $(LDFLAGS_DEBUG) $(LIB_DEBUG)

$(OBJDIR_DEBUG)/src/SizeBuffer.o: src/SizeBuffer.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/SizeBuffer.c -o $(OBJDIR_DEBUG)/src/SizeBuffer.o

$(OBJDIR_DEBUG)/src/Anniversary.o: src/Anniversary.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Anniversary.c -o $(OBJDIR_DEBUG)/src/Anniversary.o

$(OBJDIR_DEBUG)/src/ClosedRange.o: src/ClosedRange.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/ClosedRange.c -o $(OBJDIR_DEBUG)/src/ClosedRange.o

$(OBJDIR_DEBUG)/src/Crc32.o: src/Crc32.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Crc32.c -o $(OBJDIR_DEBUG)/src/Crc32.o

$(OBJDIR_DEBUG)/src/Date.o: src/Date.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Date.c -o $(OBJDIR_DEBUG)/src/Date.o

$(OBJDIR_DEBUG)/src/DateTime.o: src/DateTime.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/DateTime.c -o $(OBJDIR_DEBUG)/src/DateTime.o

$(OBJDIR_DEBUG)/src/DstTransitionTime.o: src/DstTransitionTime.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/DstTransitionTime.c -o $(OBJDIR_DEBUG)/src/DstTransitionTime.o

$(OBJDIR_DEBUG)/src/File.o: src/File.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/File.c -o $(OBJDIR_DEBUG)/src/File.o

$(OBJDIR_DEBUG)/src/FileMapping.o: src/FileMapping.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/FileMapping.c -o $(OBJDIR_DEBUG)/src/FileMapping.o

$(OBJDIR_DEBUG)/src/KeyValue.o: src/KeyValue.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/KeyValue.c -o $(OBJDIR_DEBUG)/src/KeyValue.o

$(OBJDIR_DEBUG)/src/LocalDateTime.o: src/LocalDateTime.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/LocalDateTime.c -o $(OBJDIR_DEBUG)/src/LocalDateTime.o

$(OBJDIR_DEBUG)/src/Lock.o: src/Lock.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Lock.c -o $(OBJDIR_DEBUG)/src/Lock.o

$(OBJDIR_DEBUG)/src/NonBlocking.o: src/NonBlocking.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/NonBlocking.c -o $(OBJDIR_DEBUG)/src/NonBlocking.o

$(OBJDIR_DEBUG)/src/Path.o: src/Path.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Path.c -o $(OBJDIR_DEBUG)/src/Path.o

$(OBJDIR_DEBUG)/src/RefCounter.o: src/RefCounter.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/RefCounter.c -o $(OBJDIR_DEBUG)/src/RefCounter.o

$(OBJDIR_DEBUG)/src/SizeString.o: src/SizeString.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/SizeString.c -o $(OBJDIR_DEBUG)/src/SizeString.o

$(OBJDIR_DEBUG)/src/SizedBuffer.o: src/SizedBuffer.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/SizedBuffer.c -o $(OBJDIR_DEBUG)/src/SizedBuffer.o

$(OBJDIR_DEBUG)/src/SizedString.o: src/SizedString.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/SizedString.c -o $(OBJDIR_DEBUG)/src/SizedString.o

$(OBJDIR_DEBUG)/src/SortedTable.o: src/SortedTable.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/SortedTable.c -o $(OBJDIR_DEBUG)/src/SortedTable.o

$(OBJDIR_DEBUG)/src/SpinLock.o: src/SpinLock.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/SpinLock.c -o $(OBJDIR_DEBUG)/src/SpinLock.o

$(OBJDIR_DEBUG)/src/StringBuilder.o: src/StringBuilder.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/StringBuilder.c -o $(OBJDIR_DEBUG)/src/StringBuilder.o

$(OBJDIR_DEBUG)/src/Table.o: src/Table.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Table.c -o $(OBJDIR_DEBUG)/src/Table.o

$(OBJDIR_DEBUG)/src/TableFile.o: src/TableFile.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/TableFile.c -o $(OBJDIR_DEBUG)/src/TableFile.o

$(OBJDIR_DEBUG)/src/TimeInterval.o: src/TimeInterval.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/TimeInterval.c -o $(OBJDIR_DEBUG)/src/TimeInterval.o

$(OBJDIR_DEBUG)/src/TimeZone.o: src/TimeZone.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/TimeZone.c -o $(OBJDIR_DEBUG)/src/TimeZone.o

$(OBJDIR_DEBUG)/src/U64.o: src/U64.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/U64.c -o $(OBJDIR_DEBUG)/src/U64.o

$(OBJDIR_DEBUG)/src/U64B.o: src/U64B.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/U64B.c -o $(OBJDIR_DEBUG)/src/U64B.o

$(OBJDIR_DEBUG)/src/U64F.o: src/U64F.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/U64F.c -o $(OBJDIR_DEBUG)/src/U64F.o

$(OBJDIR_DEBUG)/src/main.o: src/main.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/main.c -o $(OBJDIR_DEBUG)/src/main.o

clean_debug: 
	rm -f $(OBJ_DEBUG) $(OUT_DEBUG)
	rm -rf bin/Debug
	rm -rf $(OBJDIR_DEBUG)/src

before_release: 
	test -d bin/Release || mkdir -p bin/Release
	test -d $(OBJDIR_RELEASE)/src || mkdir -p $(OBJDIR_RELEASE)/src

after_release: 

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LIBDIR_RELEASE) -o $(OUT_RELEASE) $(OBJ_RELEASE)  $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)/src/SizeBuffer.o: src/SizeBuffer.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/SizeBuffer.c -o $(OBJDIR_RELEASE)/src/SizeBuffer.o

$(OBJDIR_RELEASE)/src/Anniversary.o: src/Anniversary.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Anniversary.c -o $(OBJDIR_RELEASE)/src/Anniversary.o

$(OBJDIR_RELEASE)/src/ClosedRange.o: src/ClosedRange.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/ClosedRange.c -o $(OBJDIR_RELEASE)/src/ClosedRange.o

$(OBJDIR_RELEASE)/src/Crc32.o: src/Crc32.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Crc32.c -o $(OBJDIR_RELEASE)/src/Crc32.o

$(OBJDIR_RELEASE)/src/Date.o: src/Date.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Date.c -o $(OBJDIR_RELEASE)/src/Date.o

$(OBJDIR_RELEASE)/src/DateTime.o: src/DateTime.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/DateTime.c -o $(OBJDIR_RELEASE)/src/DateTime.o

$(OBJDIR_RELEASE)/src/DstTransitionTime.o: src/DstTransitionTime.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/DstTransitionTime.c -o $(OBJDIR_RELEASE)/src/DstTransitionTime.o

$(OBJDIR_RELEASE)/src/File.o: src/File.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/File.c -o $(OBJDIR_RELEASE)/src/File.o

$(OBJDIR_RELEASE)/src/FileMapping.o: src/FileMapping.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/FileMapping.c -o $(OBJDIR_RELEASE)/src/FileMapping.o

$(OBJDIR_RELEASE)/src/KeyValue.o: src/KeyValue.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/KeyValue.c -o $(OBJDIR_RELEASE)/src/KeyValue.o

$(OBJDIR_RELEASE)/src/LocalDateTime.o: src/LocalDateTime.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/LocalDateTime.c -o $(OBJDIR_RELEASE)/src/LocalDateTime.o

$(OBJDIR_RELEASE)/src/Lock.o: src/Lock.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Lock.c -o $(OBJDIR_RELEASE)/src/Lock.o

$(OBJDIR_RELEASE)/src/NonBlocking.o: src/NonBlocking.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/NonBlocking.c -o $(OBJDIR_RELEASE)/src/NonBlocking.o

$(OBJDIR_RELEASE)/src/Path.o: src/Path.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Path.c -o $(OBJDIR_RELEASE)/src/Path.o

$(OBJDIR_RELEASE)/src/RefCounter.o: src/RefCounter.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/RefCounter.c -o $(OBJDIR_RELEASE)/src/RefCounter.o

$(OBJDIR_RELEASE)/src/SizeString.o: src/SizeString.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/SizeString.c -o $(OBJDIR_RELEASE)/src/SizeString.o

$(OBJDIR_RELEASE)/src/SizedBuffer.o: src/SizedBuffer.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/SizedBuffer.c -o $(OBJDIR_RELEASE)/src/SizedBuffer.o

$(OBJDIR_RELEASE)/src/SizedString.o: src/SizedString.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/SizedString.c -o $(OBJDIR_RELEASE)/src/SizedString.o

$(OBJDIR_RELEASE)/src/SortedTable.o: src/SortedTable.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/SortedTable.c -o $(OBJDIR_RELEASE)/src/SortedTable.o

$(OBJDIR_RELEASE)/src/SpinLock.o: src/SpinLock.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/SpinLock.c -o $(OBJDIR_RELEASE)/src/SpinLock.o

$(OBJDIR_RELEASE)/src/StringBuilder.o: src/StringBuilder.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/StringBuilder.c -o $(OBJDIR_RELEASE)/src/StringBuilder.o

$(OBJDIR_RELEASE)/src/Table.o: src/Table.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Table.c -o $(OBJDIR_RELEASE)/src/Table.o

$(OBJDIR_RELEASE)/src/TableFile.o: src/TableFile.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/TableFile.c -o $(OBJDIR_RELEASE)/src/TableFile.o

$(OBJDIR_RELEASE)/src/TimeInterval.o: src/TimeInterval.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/TimeInterval.c -o $(OBJDIR_RELEASE)/src/TimeInterval.o

$(OBJDIR_RELEASE)/src/TimeZone.o: src/TimeZone.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/TimeZone.c -o $(OBJDIR_RELEASE)/src/TimeZone.o

$(OBJDIR_RELEASE)/src/U64.o: src/U64.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/U64.c -o $(OBJDIR_RELEASE)/src/U64.o

$(OBJDIR_RELEASE)/src/U64B.o: src/U64B.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/U64B.c -o $(OBJDIR_RELEASE)/src/U64B.o

$(OBJDIR_RELEASE)/src/U64F.o: src/U64F.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/U64F.c -o $(OBJDIR_RELEASE)/src/U64F.o

$(OBJDIR_RELEASE)/src/main.o: src/main.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/main.c -o $(OBJDIR_RELEASE)/src/main.o

clean_release: 
	rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
	rm -rf bin/Release
	rm -rf $(OBJDIR_RELEASE)/src

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release

