#include <string>
#include <vector>
#include <iostream>
#include <sstream>
#include <cstdlib>

#include "aoc_day___DAY_NUMBER_0X__.h"
#include "file_utils.h"

using namespace std;

AocDay__DAY_NUMBER_X__::AocDay__DAY_NUMBER_X__():AocDay(__DAY_NUMBER_X__)
{
}

AocDay__DAY_NUMBER_X__::~AocDay__DAY_NUMBER_X__()
{
}

vector<long> AocDay__DAY_NUMBER_X__::read_input(string filename)
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

string AocDay__DAY_NUMBER_X__::part1(string filename, vector<string> extra_args)
{
    vector<long> data = read_input(filename);
    
    cerr << "*****Part 1 implementation for day " << m_day << " is not defined*****" << endl;
    return "";

    ostringstream out;
    out << 42;
    return out.str();
}

string AocDay__DAY_NUMBER_X__::part2(string filename, vector<string> extra_args)
{
    
    vector<long> data = read_input(filename);
    
    cerr << "*****Part 1 implementation for day " << m_day << " is not defined*****" << endl;
    return "";
    
    ostringstream out;
    out << 69;
    return out.str();
}
