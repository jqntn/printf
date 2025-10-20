@echo off
(
echo #ifndef PRINTF_H
echo #define PRINTF_H
echo.
type "src\printf\printf.h"
echo.
echo #ifdef PRINTF_IMPLEMENTATION
echo.
findstr /v /i "#include.*printf.h" "src\printf\printf.c"
echo.
echo #endif
echo.
echo #endif
) > "printf.h"