#ifndef SYMBOLS_H
#define SYMBOLS_H

#include <math.h>

enum symbols{
	BAD, NUM, COND, VAR, OP, ELSE, EOL
};
char *symbolnames[] = {"BAD", "NUM", "COND", "VAR", "OP", "ELSE", "EOL"};

//double div(double top, double bottom){return top / bottom;}
//double mul(double left, double right){return left*right;}
//double add(double left, double right){return left+right;}
//double sub(double left, double right){return left-right;}
//double dpow(double base, double exp){return pow(base, exp);}

 
#endif //SYMBOLS_H
