#include <string>
#include <vector>
#include <iostream>
#include <sstream>
#include <cstdlib>

#include "aoc_day_10.h"
#include "file_utils.h"

using namespace std;

AocDay10::AocDay10():AocDay(10)
{
}

AocDay10::~AocDay10()
{
}

vector<long> AocDay10::read_input(string filename)
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

string AocDay10::part1(string filename, vector<string> extra_args)
{
    vector<long> data = read_input(filename);
    
    cerr << "*****Part 1 implementation for day " << m_day << " is not defined*****" << endl;
    return "";

    ostringstream out;
    out << 42;
    return out.str();
}

string AocDay10::part2(string filename, vector<string> extra_args)
{
    
    vector<long> data = read_input(filename);
    
    cerr << "*****Part 1 implementation for day " << m_day << " is not defined*****" << endl;
    return "";
    
    ostringstream out;
    out << 69;
    return out.str();
}