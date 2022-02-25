project "ImGui"
  kind "StaticLib"
  language "C++"
 
  location "%{wks.location}/projects"

  targetdir "bin/"
  objdir "%{cfg.targetdir}/%{prj.name}/obj"

  files { 
    "imconfig.h",
    "imgui.cpp",
    "imgui.h",
    "imgui_demo.cpp",
    "imgui_draw.cpp",
    "imgui_internal.h",
    "imgui_tables.cpp",
    "imgui_widgets.cpp",
    "imstb_rectpack.h",
    "imstb_textedit.h",
    "imstb_truetype.h"
  }

  filter "system:windows"
    systemversion "latest"
    cppdialect "C++17"
    staticruntime "on"

  filter "configurations:Debug"
    runtime "Debug"
    symbols "on"
    
  filter "configurations:Release"
    runtime "Release"
    optimize "on"