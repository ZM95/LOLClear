@echo off
chcp 65001
cd /d %~dp0

:remove
@REM Cross
del /F /S /Q %~dp0\Cross\*
rd /S /Q %~dp0\Cross\*

@REM XY_YXQ_Nethelper
del /F /S /Q C:\Program Files (x86)\yxq_nethelper\*
rd /S /Q C:\Program Files (x86)\yxq_nethelper\*


@REM LeagueClient
rd /S /Q %~dp0\LeagueClient\NetworkAssist
rd /S /Q %~dp0\LeagueClient\FeedBack
rd /S /Q %~dp0\LeagueClient\GVoiceLog
rd /S /Q %~dp0\LeagueClient\GVoiceTQos
del /F /S /Q %~dp0\LeagueClient\*.log

@REM Riot Client
del /F /S /Q %~dp0\Riot Client\Cross
del /F /S /Q %~dp0\Riot Client\GVoiceLog
del /F /S /Q %~dp0\LeagueClient\GVoiceTQos
rd /S /Q %~dp0\Riot Client\Cross
rd /S /Q %~dp0\Riot Client\GVoiceLog
rd /S /Q %~dp0\LeagueClient\GVoiceTQos

@REM Launcher

del /F /S /Q %~dp0\Launcher\txsso
del /F /S /Q %~dp0\Launcher\Tenio\TenioDL\*

rd /S /Q %~dp0\Launcher\txsso
rd /S /Q %~dp0\Launcher\Tenio\TenioDL\*

@REM Game
del /F /S /Q %~dp0\Game\TPDownload.dll

@REM TCLS
del /F /S /Q %~dp0\TCLS\Tenio\TenioDL\*
del /F /S /Q %~dp0\TCLS\TenProtect\Tenio\*
del /F /S /Q %~dp0\TCLS\TenProtect\TP\TPHelper\Tenio\*
del /F /S /Q %~dp0\TCLS\QBBlink\tgp_minibrowser.exe
rd /S /Q %~dp0\TCLS\Tenio\TenioDL\*
rd /S /Q %~dp0\TCLS\TenProtect\Tenio\*
rd /S /Q %~dp0\TCLS\TenProtect\TP\TPHelper\Tenio\*
del /F /S /Q %~dp0\log\*

@REM 只读属性
attrib %~dp0\Cross +r
::attrib %~dp0\TCLS\Tenio\TenioDL +r
::attrib %~dp0\TCLS\TenProtect\Tenio +r
::attrib %~dp0\TCLS\TenProtect\TP\TPHelper\Tenio +r

cls 
echo. 
echo. 
echo. 
echo     操作完成，
echo. 
echo. 

