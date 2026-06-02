@REM Build for MINGW64 or 32 from MSYS2.
@set OUT_DIR=Debug
@REM @set OUT_EXE=example_win32_opengl3
@set OUT_EXE=imgui_template
@set INCLUDES=-I../imgui-master -I../imgui-master/backends
@set SOURCES=main.cpp ../imgui-master/backends/imgui_impl_opengl3.cpp ../imgui-master/backends/imgui_impl_win32.cpp ../imgui-master/imgui*.cpp
@set LIBS=-lopengl32 -lgdi32 -ldwmapi
mkdir %OUT_DIR%
g++ -DUNICODE %INCLUDES% %SOURCES% -o %OUT_DIR%/%OUT_EXE%.exe --static -mwindows %LIBS% %LIBS%
pause
