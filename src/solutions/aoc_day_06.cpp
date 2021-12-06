#include <string>
#include <vector>
#include <iostream>
#include <sstream>
#include <cstdlib>

#include "aoc_day_06.h"
#include "file_utils.h"

using namespace std;

AocDay6::AocDay6():AocDay(6)
{
}

AocDay6::~AocDay6()
{
}

vector<long> AocDay6::read_input(string filename)
{
    FileUtils fileutils;
    vector<string> raw_lines;
    vector<long> data;
    if (!fileutils.read_as_list_of_strings(filename, raw_lines))
    {
        cerr << "Error reading in the data from " << filename << endl;
        return data;
    }
    for (vector<string>::iterator iter = raw_lines.begin(); iter != raw_lines.end(); ++iter)
    {
        long l;
        string to_convert = *iter;
        l = strtol(to_convert.c_str(), NULL, 10);
        data.push_back(l);
    }
    return data;
}

string AocDay6::part1(string filename, vector<string> extra_args)
{
    vector<long> data = read_input(filename);
    
    cerr << "*****Part 1 implementation for day " << m_day << " is not defined*****" << endl;
    return "";

    ostringstream out;
    out << 42;
    return out.str();
}

string AocDay6::part2(string filename, vector<string> extra_args)
{
    
    vector<long> data = read_input(filename);
    
    cerr << "*****Part 1 implementation for day " << m_day << " is not defined*****" << endl;
    return "";
    
    ostringstream out;
    out << 69;
    return out.str();
}
