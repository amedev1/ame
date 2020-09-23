set buildDir=%~dp0..\..\_build\
::rd /S /Q %buildDir%gifs\ >NUL
cd %buildDir%
mkdir gifs
cd %buildDir%\bin

::CALL :Capture 2_1_colors, graphics_2_lighting_1_colors, 1
::CALL :Capture 2_2_1_basic_lighting_diffuse, graphics_2_lighting_2_1_basic_lighting_diffuse, 1
::CALL :Capture 2_2_2_basic_lighting_specular, graphics_2_lighting_2_2_basic_lighting_specular, 1
::CALL :Capture 2_2_3_basic_lighting_exercise1, graphics_2_lighting_2_3_basic_lighting_exercise1, 5000
::CALL :Capture 2_2_4_basic_lighting_exercise2, graphics_2_lighting_2_4_basic_lighting_exercise2, 1
::CALL :Capture 2_2_5_basic_lighting_exercise3, graphics_2_lighting_2_5_basic_lighting_exercise3, 1
::CALL :Capture 2_3_1_materials, graphics_2_lighting_3_1_materials, 5000
::CALL :Capture 2_3_2_materials_exercise1, graphics_2_lighting_3_2_materials_exercise1, 1

::CALL :Capture 2_4_1_lighting_maps_diffuse_map, graphics_2_lighting_4_1_lighting_maps_diffuse_map, 1
::CALL :Capture 2_4_2_lighting_maps_specular_map, graphics_2_lighting_4_2_lighting_maps_specular_map, 1
::CALL :Capture 2_4_3_lighting_maps_exercise2, graphics_2_lighting_4_3_lighting_maps_exercise2, 1
::CALL :Capture 2_4_4_lighting_maps_exercise4, graphics_2_lighting_4_4_lighting_maps_exercise4, 1
::CALL :Capture 2_5_1_light_casters_directional, graphics_2_lighting_5_1_light_casters_directional, 1
::CALL :Capture 2_5_2_light_casters_point, graphics_2_lighting_5_2_light_casters_point, 1
::CALL :Capture 2_5_3_light_casters_spot, graphics_2_lighting_5_4_light_casters_spot, 1
::CALL :Capture 2_5_4_light_casters_spot_soft, graphics_2_lighting_5_4_light_casters_spot_soft, 1
CALL :Capture 2_6_1_multiple_lights, graphics_2_lighting_6_1_multiple_lights, 5000
::CALL :Capture 2_6_2_multiple_lights_exercise1, graphics_2_lighting_6_2_multiple_lights_exercise1, 6000



EXIT /B %ERRORLEVEL%

:Capture
start %~1.exe
timeout /t 2
@call gif_recorder %~2 %~3
@call fs_tool file_copy output_record.gif %buildDir%/gifs/%~1.gif
taskkill /im %~1.exe