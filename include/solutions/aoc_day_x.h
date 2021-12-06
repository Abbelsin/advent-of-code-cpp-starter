#ifndef __AOC_DAY___DAY_NUMBER_X____
#define __AOC_DAY___DAY_NUMBER_X____

#include "aoc_day.h"

class AocDay__DAY_NUMBER_X__ : public AocDay
{
    private:
        vector<long> read_input(string filename);
    public:
        AocDay__DAY_NUMBER_X__();
        ~AocDay__DAY_NUMBER_X__();
        string part1(string filename, vector<string> extra_args);
        string part2(string filename, vector<string> extra_args);
};


#endif
