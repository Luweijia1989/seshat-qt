#ifndef FORMULARECLIB_H
#define FORMULARECLIB_H

#include <string>
class meParser;

class FormulaRecLib
{

public:
    FormulaRecLib(char *config); // config file's path
    ~FormulaRecLib();
    void doParse(char *input, std::string &output);

private:
    meParser *seshat;
};

#endif // FORMULARECLIB_H
