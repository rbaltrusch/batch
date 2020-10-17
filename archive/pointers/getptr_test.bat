::pointers defined starting with *.
::A pointer can point to another pointer.
::call getptr and pass pointer to recursively retrieve value

@echo off
set p=*123
set *123=*234
set *234=*345
set *345=helpo
call getptr p

::should print helpo to console
echo %rv%
