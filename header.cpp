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
    return local_int;
}
