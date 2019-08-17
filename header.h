// PRECOMPILER LOGIC
#ifndef UNIQUE_NAME_OF_PROJ
#define UNIQUE_NAME_OF_PROJ
// IMPORTS
#include <iostream>
//CLASSES
class Class_Name
{
public:
  int get_local_int();
private:
  int local_int;
};
// GLOBAL FUNCTIONS
int get_global_int();
// GLOBAL VARIABLES (defined elsewhere)
extern int global_int;
#endif
// END OF FILE
