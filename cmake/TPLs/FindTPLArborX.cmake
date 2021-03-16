FIND_PACKAGE(ArborX REQUIRED
    CONFIG
    HINTS
      ${TPL_ArborX_DIR}/lib/cmake/ArborX
      ${TPL_ArborX_DIR}
)
GET_TARGET_PROPERTY(ArborX_INCLUDE_DIRS ArborX::ArborX INTERFACE_INCLUDE_DIRECTORIES)
GLOBAL_SET(TPL_ArborX_INCLUDE_DIRS "${ArborX_INCLUDE_DIRS}")
GLOBAL_SET(TPL_ArborX_LIBRARIES    "")
GLOBAL_SET(TPL_ArborX_LIBRARY_DIRS "")
MESSAGE("${TPL_ArborX_INCLUDE_DIRS},${TPL_ArborX_LIBRARIES},${TPL_ArborX_LIBRARY_DIRS}")