project "yaml-cpp"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
	staticruntime "On"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin/" .. outputdir .. "/%{prj.name}")

    defines "YAML_CPP_STATIC_DEFINE"

    files
    {
        "src/**.h",
        "src/**.cpp",
        "include/**.h"
    }

    includedirs 
    {
        "include"
    }

    filter "system:windows"
		systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
		symbols "On"

	filter "configurations:Release"
        runtime "Release"
		optimize "On"
