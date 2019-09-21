// TEMPLATE AUTHOR: Jadon Wolffs
// CLONE TEMPLATE with: git clone https://github.com/jadonwolffs/cpp_templates.git

#include "header.h"

// DEFINE EXTERNED VARS
int global_int;
// IMPLEMENT CLASS METHODS
int Class_Name::get_local_int()
{
    return this->local_int;
}
// IMPLEMENT HELPER METHODS
int get_global_int()
{
    return global_int;
}
