file(GLOB_RECURSE EDITORTEST_HEADER_FILES
		RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}
		"*.h" "*.hpp" "*.inl"
		)
file(GLOB_RECURSE EDITORTEST_SOURCE_FILES
		RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}
		"*.c" "*.cpp" "*.rc"
		)

add_library(EditorStereo ${EDITORSTEREO_HEADER_FILES} ${EDITORSTEREO_SOURCE_FILES})

target_compile_features(EditorStereo PUBLIC cxx_std_17)
target_compile_definitions(EditorStereo
		PUBLIC
		ACID_RELOAD
		)
target_include_directories(EditorStereo PRIVATE $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>)
target_link_libraries(EditorStereo PRIVATE Acid::Acid)

set_target_properties(EditorStereo PROPERTIES
		FOLDER "Acid/Editor"
		)

include(AcidGroupSources)
acid_group_sources("${CMAKE_CURRENT_SOURCE_DIR}" "/" "" "${EDITORSTEREO_HEADER_FILES}")
acid_group_sources("${CMAKE_CURRENT_SOURCE_DIR}" "/" "" "${EDITORSTEREO_SOURCE_FILES}")
