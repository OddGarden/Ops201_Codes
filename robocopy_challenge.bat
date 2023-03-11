@echo off
:: Script:                   Ops 201 Class 08 Ops Challenge Solution
:: Author:                   Lilian Mburu
:: Date of last revision:    Mar 9th 2023
:: Purpose:                  Automate the copy operation from one drive to another.

:: Main

    robocopy "C:\Users\j.thompson\Desktop\My Project Files" "H:\temp" /E /DCOPY:DAT /R:10 /W:3

:: End
