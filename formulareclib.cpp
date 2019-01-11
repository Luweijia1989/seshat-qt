#include "formulareclib.h"
#include <cstdio>
#include <cstring>
#include "grammar.h"
#include "sample.h"
#include "meparser.h"

FormulaRecLib::FormulaRecLib(char *config)
{
    ios_base::sync_with_stdio(true);
    seshat = new meParser(config);
}

FormulaRecLib::~FormulaRecLib()
{
    delete seshat;
}

void FormulaRecLib::doParse(char *input, string &output)
{
    Sample m( input );
    seshat->parse_me(&m, output);
}
