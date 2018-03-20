@ECHO OFF
@REM ###########################################
@REM # Script file to run the flow 
@REM # 
@REM ###########################################
@REM #
@REM # Command line for ngdbuild
@REM #
ngdbuild -p xc6slx45fgg676-2 -nt timestamp -bm HelloWorld.bmm "C:/RA104-2015/lab3/implementation/HelloWorld.ngc" -uc HelloWorld.ucf HelloWorld.ngd 

@REM #
@REM # Command line for map
@REM #
map -o HelloWorld_map.ncd -w -pr b -ol high -timing -detail HelloWorld.ngd HelloWorld.pcf 

@REM #
@REM # Command line for par
@REM #
par -w -ol high HelloWorld_map.ncd HelloWorld.ncd HelloWorld.pcf 

@REM #
@REM # Command line for post_par_trce
@REM #
trce -e 3 -xml HelloWorld.twx HelloWorld.ncd HelloWorld.pcf 

