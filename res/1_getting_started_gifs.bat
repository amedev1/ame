set buildDir=%~dp0..\..\_build\
::rd /S /Q %buildDir%gifs\ >NUL
cd %buildDir%
mkdir gifs
cd %buildDir%\bin

CALL :Capture 1_1_window, graphics_1_start_1_window, 1

CALL :Capture 1_2_1_triangle, graphics_1_start_2_1_triangle, 1
CALL :Capture 1_2_2_triangle_indexed, graphics_1_start_2_2_triangle_indexed, 1

CALL :Capture 1_2_3_triangle_exercise1, graphics_1_start_2_3_triangle_exercise1, 1
CALL :Capture 1_2_4_triangle_exercise2, graphics_1_start_2_4_triangle_exercise2, 1
CALL :Capture 1_2_5_triangle_exercise3, graphics_1_start_2_5_triangle_exercise3, 1

CALL :Capture 1_3_1_shaders_uniform, graphics_1_start_3_1_shaders_uniform, 3000
CALL :Capture 1_3_2_shaders_interpolation, graphics_1_start_3_2_shaders_interpolation, 1
CALL :Capture 1_3_3_shaders_exercise1, graphics_1_start_3_3_shaders_exercise1, 1
CALL :Capture 1_3_4_shaders_exercise2, graphics_1_start_3_4_shaders_exercise2, 1
CALL :Capture 1_3_5_shaders_exercise3, graphics_1_start_3_5_shaders_exercise3, 1

CALL :Capture 1_4_1_textures, graphics_1_start_4_1_textures, 1
CALL :Capture 1_4_2_textures_combined, graphics_1_start_4_2_textures_combined, 1
CALL :Capture 1_4_3_textures_exercise1, graphics_1_start_4_3_textures_exercise1, 1
CALL :Capture 1_4_4_textures_exercise2, graphics_1_start_4_4_textures_exercise2, 1
CALL :Capture 1_4_5_textures_exercise3, graphics_1_start_4_5_textures_exercise3, 1

CALL :Capture 1_5_1_transformations, graphics_1_start_5_1_transformations, 3000
CALL :Capture 1_5_2_transformations_exercise1, graphics_1_start_5_2_transformations_exercise1, 3000
CALL :Capture 1_5_3_transformations_exercise2, graphics_1_start_5_3_transformations_exercise2, 3000

CALL :Capture 1_6_1_coordinate_systems, graphics_1_start_6_1_coordinate_systems, 1
CALL :Capture 1_6_2_coordinate_systems_depth, graphics_1_start_6_2_coordinate_systems_depth, 3000
CALL :Capture 1_6_3_coordinate_systems_multiple, graphics_1_start_6_3_coordinate_systems_multiple, 1
CALL :Capture 1_6_4_coordinate_systems_exercise3, graphics_1_start_6_4_coordinate_systems_exercise3, 3000

CALL :Capture 1_7_1_camera_circle, graphics_1_start_7_1_camera_circle, 3000

EXIT /B %ERRORLEVEL%

:Capture
start %~1.exe
timeout /t 2
@call gif_recorder %~2 %~3
@call fs_tool file_copy output_record.gif %buildDir%/gifs/%~1.gif
taskkill /im %~1.exe