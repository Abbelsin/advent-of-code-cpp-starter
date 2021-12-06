#!/usr/bin/env python3
import argparse
import os

# command to run a solution
# ./bin/aoc -d 1 -p 1 -f data/sample/day0_input.txt 

def generate_src_files(days):
    for day in days:
        src_file_template = open("src/solutions/aoc_day_x.cpp")
        new_file_content = ""
        for line in src_file_template:
            new_line = line.replace("__DAY_NUMBER_0X__", day)
            new_line = new_line.replace("__DAY_NUMBER_X__", day.lstrip("0"))
            new_file_content += new_line
        src = open(f"src/solutions/aoc_day_{day}.cpp", "w+")
        src.write(new_file_content)
        src.close()
        src_file_template.close()


def generate_header_files(days):
    for day in days:
        h_file_template = open("include/solutions/aoc_day_x.h")
        new_file_content = ""
        for line in h_file_template:
            new_line = line.replace("__DAY_NUMBER_0X__", day)
            new_line = new_line.replace("__DAY_NUMBER_X__", day.lstrip("0"))
            new_file_content += new_line
        src = open(f"include/solutions/aoc_day_{day}.h", "w+")
        src.write(new_file_content)
        src.close()
        h_file_template.close()

if __name__ == '__main__':
    with open("copypasta.txt", 'w') as file:
        days = []
        for day in range(1, 26):
            dayname = str(day).zfill(2)
            days.append(dayname)
            print(dayname)
            file.write(f"""build/solutions/aoc_day_{dayname}.o: src/solutions/aoc_day_{dayname}.cpp  \\
	include/solutions/aoc_day_{dayname}.h \\
	include/solutions/aoc_day.h \\
	include/common/constants.h
	g++ ${{CPPFLAGS}} -o build/solutions/aoc_day_{dayname}.o -c src/solutions/aoc_day_{dayname}.cpp\n\n""")
        file.write(f"""clean:
	rm -f build/runner/aoc_test.o  \\
	build/runner/aoc_tests.o  \\
	build/runner/file_utils.o  \\
	build/solutions/aoc_day.o \\ \n""")
        for day in days:
            file.write(f"""\tbuild/solutions/aoc_day_{day}.o \\\n""")
        file.write(f"""\tbuild/solutions/aoc_days.o
    build/aoc.o  \\
    bin/lib/librunner.a  \\
    bin/lib/libsolutions.a  \\
    bin/aoc\n\n""")

        file.write(f"""all: build/runner/aoc_test.o  \\
    build/runner/aoc_tests.o  \\
    build/runner/file_utils.o  \\
    build/solutions/aoc_day.o  \\
    build/solutions/aoc_day_0.o  \\\n""")
        for day in days:
            file.write(f"""\tbuild/solutions/aoc_day_{day}.o  \\\n""")
        file.write("""\tbuild/solutions/aoc_days.o  \\
    build/aoc.o  \\
    bin/lib/librunner.a  \\
    bin/lib/libsolutions.a  \\
    bin/aoc""")
    generate_src_files(days)
    generate_header_files(days)

