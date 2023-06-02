
REM echo off

set springtoolsuite=D:\Aulas\2022\LIP1\ambiente\sts-4.15.3.RELEASE\SpringToolSuite4.exe

REM set unidade=I

set /p unidade="Unidade:"

set dirbase=%unidade%:\Aulas\2023\Modulo\Material


set workspace=%dirbase%\workspace-crud-parte3

echo %workspace%

if not exist %workspace% (
	mkdir %workspace%
)

set download=%dirbase%\download

if not exist %download% (
	mkdir %download%
	
	git clone https://github.com/ProfNpc/CrudExampleParte3.git %download%
)

robocopy %download%\inicial %workspace%\crud /S /E

Rem %springtoolsuite% -data %workspace% -import uri:%workspace%\crud

%springtoolsuite% -data %workspace% -import uri:%workspace%\crud

Rem pause
