%module test

%{
/* headers needed to compile interface */
#include "test.h"
%}

/* headers to export to python */

%include "test.h"
