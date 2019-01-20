file(GLOB IMGUI_SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/imgui/*.cpp)
file(GLOB IMGUI_HEADERS  ${CMAKE_CURRENT_SOURCE_DIR}/imgui/*.h)
add_library(Imgui STATIC ${IMGUI_SOURCES} ${IMGUI_HEADERS})
# GCC complains during linking of shared libraries that use this target (Engine, RenderingDevice)
set_property(TARGET Imgui PROPERTY POSITION_INDEPENDENT_CODE ON)
set_target_properties(Imgui PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_SOURCE_DIR}/imgui")
set_target_properties (Imgui PROPERTIES FOLDER "ThirdParty" )