::This is the Entity class.
::A class definition needs to at least have the top block, :construct and :main.
::Important is that the constructor does not use local scope using setlocal,
::as attributes must reside in global varspace to make them useable in other
::batfiles

::top block
@echo off
goto :__main__

:__main__
	echo PIXEL MAIN: %*
	set __class__=%0
	call getptr %~1 self 1
	call :%~2 %*
exit /b

:__dict__ --> 1:objectname
	set %self%
exit /b

:__base_constructor__ --> objectname
	call get_new_ptr self
	set %self%.type=%__class__%
	::modified base constructor
	::need to chop off pointer asterix otherwise list.get method doesnt work
	::set %~1=%self:~1%
	set %~1=%self%
exit /b

:construct --> 1:objectname 2:methodname 3:x 4:y 5:frame
	::constructor method needs to be called to instantiate object. 
	::Attributes reside in global varspace
	call :__base_constructor__ %~1
	set %self%.x=%~3
	set %self%.y=%~4
	set %self%.frame=%~5
exit /b
