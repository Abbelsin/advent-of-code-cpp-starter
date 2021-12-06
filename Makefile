DEBUG=
#Uncomment the below line to dispaly the runner debug
#DEBUG+= -DDEBUG_RUNNER
#Template for other debug flags to be added later
#DEBUG+- -DDEBUG_OTHER

#If adding another include directory, be sure to add it here
CPPFLAGS=-g ${DEBUG} -Iinclude/common -Iinclude/runner -Iinclude/solutions

.DEFAULT_GOAL := all

# Runner library; contains a lot of common code for file parsing and handling test files
build/runner/aoc_test.o: src/runner/aoc_test.cpp  \
	include/runner/aoc_test.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/runner/aoc_test.o -c src/runner/aoc_test.cpp

build/runner/aoc_tests.o: src/runner/aoc_tests.cpp  \
	include/runner/aoc_tests.h \
	include/runner/aoc_test.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/runner/aoc_tests.o -c src/runner/aoc_tests.cpp

build/runner/file_utils.o: src/runner/file_utils.cpp  \
	include/runner/file_utils.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/runner/file_utils.o -c src/runner/file_utils.cpp

bin/lib/librunner.a: build/runner/aoc_test.o  \
	build/runner/aoc_tests.o  \
	build/runner/file_utils.o
	ar rcs bin/lib/librunner.a build/runner/aoc_test.o build/runner/aoc_tests.o build/runner/file_utils.o

# Solutions - These are the programs for the daily solutions
build/solutions/aoc_day.o: src/solutions/aoc_day.cpp  \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day.o -c src/solutions/aoc_day.cpp

build/solutions/aoc_days.o: src/solutions/aoc_days.cpp  \
	include/solutions/aoc_days.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_days.o -c src/solutions/aoc_days.cpp

#Generic line to compile a daily solution.
#Be sure to add the .o file to the libsolutions.a target
build/solutions/aoc_day_0.o: src/solutions/aoc_day_0.cpp  \
	include/solutions/aoc_day_0.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_0.o -c src/solutions/aoc_day_0.cpp

build/solutions/aoc_day_01.o: src/solutions/aoc_day_01.cpp  \
	include/solutions/aoc_day_01.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_01.o -c src/solutions/aoc_day_01.cpp

build/solutions/aoc_day_02.o: src/solutions/aoc_day_02.cpp  \
	include/solutions/aoc_day_02.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_02.o -c src/solutions/aoc_day_02.cpp

build/solutions/aoc_day_03.o: src/solutions/aoc_day_03.cpp  \
	include/solutions/aoc_day_03.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_03.o -c src/solutions/aoc_day_03.cpp

build/solutions/aoc_day_04.o: src/solutions/aoc_day_04.cpp  \
	include/solutions/aoc_day_04.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_04.o -c src/solutions/aoc_day_04.cpp

build/solutions/aoc_day_05.o: src/solutions/aoc_day_05.cpp  \
	include/solutions/aoc_day_05.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_05.o -c src/solutions/aoc_day_05.cpp

build/solutions/aoc_day_06.o: src/solutions/aoc_day_06.cpp  \
	include/solutions/aoc_day_06.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_06.o -c src/solutions/aoc_day_06.cpp

build/solutions/aoc_day_07.o: src/solutions/aoc_day_07.cpp  \
	include/solutions/aoc_day_07.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_07.o -c src/solutions/aoc_day_07.cpp

build/solutions/aoc_day_08.o: src/solutions/aoc_day_08.cpp  \
	include/solutions/aoc_day_08.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_08.o -c src/solutions/aoc_day_08.cpp

build/solutions/aoc_day_09.o: src/solutions/aoc_day_09.cpp  \
	include/solutions/aoc_day_09.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_09.o -c src/solutions/aoc_day_09.cpp

build/solutions/aoc_day_10.o: src/solutions/aoc_day_10.cpp  \
	include/solutions/aoc_day_10.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_10.o -c src/solutions/aoc_day_10.cpp

build/solutions/aoc_day_11.o: src/solutions/aoc_day_11.cpp  \
	include/solutions/aoc_day_11.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_11.o -c src/solutions/aoc_day_11.cpp

build/solutions/aoc_day_12.o: src/solutions/aoc_day_12.cpp  \
	include/solutions/aoc_day_12.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_12.o -c src/solutions/aoc_day_12.cpp

build/solutions/aoc_day_13.o: src/solutions/aoc_day_13.cpp  \
	include/solutions/aoc_day_13.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_13.o -c src/solutions/aoc_day_13.cpp

build/solutions/aoc_day_14.o: src/solutions/aoc_day_14.cpp  \
	include/solutions/aoc_day_14.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_14.o -c src/solutions/aoc_day_14.cpp

build/solutions/aoc_day_15.o: src/solutions/aoc_day_15.cpp  \
	include/solutions/aoc_day_15.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_15.o -c src/solutions/aoc_day_15.cpp

build/solutions/aoc_day_16.o: src/solutions/aoc_day_16.cpp  \
	include/solutions/aoc_day_16.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_16.o -c src/solutions/aoc_day_16.cpp

build/solutions/aoc_day_17.o: src/solutions/aoc_day_17.cpp  \
	include/solutions/aoc_day_17.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_17.o -c src/solutions/aoc_day_17.cpp

build/solutions/aoc_day_18.o: src/solutions/aoc_day_18.cpp  \
	include/solutions/aoc_day_18.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_18.o -c src/solutions/aoc_day_18.cpp

build/solutions/aoc_day_19.o: src/solutions/aoc_day_19.cpp  \
	include/solutions/aoc_day_19.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_19.o -c src/solutions/aoc_day_19.cpp

build/solutions/aoc_day_20.o: src/solutions/aoc_day_20.cpp  \
	include/solutions/aoc_day_20.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_20.o -c src/solutions/aoc_day_20.cpp

build/solutions/aoc_day_21.o: src/solutions/aoc_day_21.cpp  \
	include/solutions/aoc_day_21.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_21.o -c src/solutions/aoc_day_21.cpp

build/solutions/aoc_day_22.o: src/solutions/aoc_day_22.cpp  \
	include/solutions/aoc_day_22.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_22.o -c src/solutions/aoc_day_22.cpp

build/solutions/aoc_day_23.o: src/solutions/aoc_day_23.cpp  \
	include/solutions/aoc_day_23.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_23.o -c src/solutions/aoc_day_23.cpp

build/solutions/aoc_day_24.o: src/solutions/aoc_day_24.cpp  \
	include/solutions/aoc_day_24.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_24.o -c src/solutions/aoc_day_24.cpp

build/solutions/aoc_day_25.o: src/solutions/aoc_day_25.cpp  \
	include/solutions/aoc_day_25.h \
	include/solutions/aoc_day.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/solutions/aoc_day_25.o -c src/solutions/aoc_day_25.cpp

bin/lib/libsolutions.a: build/solutions/aoc_day.o  \
	build/solutions/aoc_days.o \
	build/solutions/aoc_day_0.o\
	build/solutions/aoc_day_01.o \
	build/solutions/aoc_day_02.o \
	build/solutions/aoc_day_03.o \
	build/solutions/aoc_day_04.o \
	build/solutions/aoc_day_05.o \
	build/solutions/aoc_day_06.o \
	build/solutions/aoc_day_07.o \
	build/solutions/aoc_day_08.o \
	build/solutions/aoc_day_09.o \
	build/solutions/aoc_day_10.o \
	build/solutions/aoc_day_11.o \
	build/solutions/aoc_day_12.o \
	build/solutions/aoc_day_13.o \
	build/solutions/aoc_day_14.o \
	build/solutions/aoc_day_15.o \
	build/solutions/aoc_day_16.o \
	build/solutions/aoc_day_17.o \
	build/solutions/aoc_day_18.o \
	build/solutions/aoc_day_19.o \
	build/solutions/aoc_day_20.o \
	build/solutions/aoc_day_21.o \
	build/solutions/aoc_day_22.o \
	build/solutions/aoc_day_23.o \
	build/solutions/aoc_day_24.o \
	build/solutions/aoc_day_25.o
	ar rcs bin/lib/libsolutions.a \
	build/solutions/aoc_day.o \
	build/solutions/aoc_days.o \
	build/solutions/aoc_day_0.o \
	build/solutions/aoc_day_01.o \
	build/solutions/aoc_day_02.o \
	build/solutions/aoc_day_03.o \
	build/solutions/aoc_day_04.o \
	build/solutions/aoc_day_05.o \
	build/solutions/aoc_day_06.o \
	build/solutions/aoc_day_07.o \
	build/solutions/aoc_day_08.o \
	build/solutions/aoc_day_09.o \
	build/solutions/aoc_day_10.o \
	build/solutions/aoc_day_11.o \
	build/solutions/aoc_day_12.o \
	build/solutions/aoc_day_13.o \
	build/solutions/aoc_day_14.o \
	build/solutions/aoc_day_15.o \
	build/solutions/aoc_day_16.o \
	build/solutions/aoc_day_17.o \
	build/solutions/aoc_day_18.o \
	build/solutions/aoc_day_19.o \
	build/solutions/aoc_day_20.o \
	build/solutions/aoc_day_21.o \
	build/solutions/aoc_day_22.o \
	build/solutions/aoc_day_23.o \
	build/solutions/aoc_day_24.o \
	build/solutions/aoc_day_25.o 
	

# The aoc executable
build/aoc.o: src/aoc.cpp  \
	include/solutions/aoc_days.h  \
	include/runner/aoc_tests.h  \
	include/runner/file_utils.h \
	include/common/constants.h
	g++ ${CPPFLAGS} -o build/aoc.o -c src/aoc.cpp


script:
	sh download.sh

#If adding a new library, be sure to add it in the correct order in the compile line
bin/aoc: build/aoc.o | script \
	bin/lib/librunner.a \
	bin/lib/libsolutions.a
	g++ ${CPPFLAGS} -o bin/aoc build/aoc.o -Lbin/lib -lsolutions -lrunner

clean:
	rm -f build/runner/aoc_test.o \
	build/runner/aoc_tests.o  \
	build/runner/file_utils.o  \
	build/solutions/aoc_day.o \
	build/solutions/aoc_day_01.o \
	build/solutions/aoc_day_02.o \
	build/solutions/aoc_day_03.o \
	build/solutions/aoc_day_04.o \
	build/solutions/aoc_day_05.o \
	build/solutions/aoc_day_06.o \
	build/solutions/aoc_day_07.o \
	build/solutions/aoc_day_08.o \
	build/solutions/aoc_day_09.o \
	build/solutions/aoc_day_10.o \
	build/solutions/aoc_day_11.o \
	build/solutions/aoc_day_12.o \
	build/solutions/aoc_day_13.o \
	build/solutions/aoc_day_14.o \
	build/solutions/aoc_day_15.o \
	build/solutions/aoc_day_16.o \
	build/solutions/aoc_day_17.o \
	build/solutions/aoc_day_18.o \
	build/solutions/aoc_day_19.o \
	build/solutions/aoc_day_20.o \
	build/solutions/aoc_day_21.o \
	build/solutions/aoc_day_22.o \
	build/solutions/aoc_day_23.o \
	build/solutions/aoc_day_24.o \
	build/solutions/aoc_day_25.o \
	build/solutions/aoc_days.o \
    build/aoc.o  \
    bin/lib/librunner.a  \
    bin/lib/libsolutions.a  \
    bin/aoc

all: build/runner/aoc_test.o  \
    build/runner/aoc_tests.o  \
    build/runner/file_utils.o  \
    build/solutions/aoc_day.o  \
    build/solutions/aoc_day_0.o  \
	build/solutions/aoc_day_01.o  \
	build/solutions/aoc_day_02.o  \
	build/solutions/aoc_day_03.o  \
	build/solutions/aoc_day_04.o  \
	build/solutions/aoc_day_05.o  \
	build/solutions/aoc_day_06.o  \
	build/solutions/aoc_day_07.o  \
	build/solutions/aoc_day_08.o  \
	build/solutions/aoc_day_09.o  \
	build/solutions/aoc_day_10.o  \
	build/solutions/aoc_day_11.o  \
	build/solutions/aoc_day_12.o  \
	build/solutions/aoc_day_13.o  \
	build/solutions/aoc_day_14.o  \
	build/solutions/aoc_day_15.o  \
	build/solutions/aoc_day_16.o  \
	build/solutions/aoc_day_17.o  \
	build/solutions/aoc_day_18.o  \
	build/solutions/aoc_day_19.o  \
	build/solutions/aoc_day_20.o  \
	build/solutions/aoc_day_21.o  \
	build/solutions/aoc_day_22.o  \
	build/solutions/aoc_day_23.o  \
	build/solutions/aoc_day_24.o  \
	build/solutions/aoc_day_25.o  \
	build/solutions/aoc_days.o  \
    build/aoc.o  \
    bin/lib/librunner.a  \
    bin/lib/libsolutions.a  \
    bin/aoc
