set buildDir=%~dp0..\..\_build\
cd %buildDir%\bin

::CALL :Capture 1_4_6_textures_exercise4, graphics_1_start_4_6_textures_exercise4, 3000

::CALL :Capture 1_7_2_camera_keyboard, graphics_1_start_7_2_camera_keyboard, 3000
::CALL :Capture 1_7_3_camera_mouse_zoom, graphics_1_start_7_3_camera_mouse_zoom, 3000
::CALL :Capture 1_7_4_camera_freefly, graphics_1_start_7_4_camera_freefly, 3000
CALL :Capture 1_7_5_camera_exercise1, graphics_1_start_7_5_camera_exercise1, 3000

EXIT /B %ERRORLEVEL%

:Capture
start %~1.exe
timeout /t 2
@call gif_recorder %~2 %~3
@call fs_tool file_copy output_record.gif %buildDir%/gifs/%~1.gif
taskkill /im %~1.exe