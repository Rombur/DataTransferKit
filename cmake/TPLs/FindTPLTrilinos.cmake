FIND_PACKAGE(Trilinos REQUIRED
    CONFIG
    HINTS
      ${TPL_Trilinos_DIR}/lib/cmake/Trilinos
      ${TPL_Trilinos_DIR}
    COMPONENTS
      ${${PACKAGE_NAME}_Trilinos_REQUIRED_COMPONENTS}
    OPTIONAL_COMPONENTS
      ${${PACKAGE_NAME}_Trilinos_OPTIONAL_COMPONENTS}
)
GLOBAL_SET(TPL_Trilinos_INCLUDE_DIRS "${Trilinos_INCLUDE_DIRS};${Trilinos_LIBRARY_DIRS}")
GLOBAL_SET(TPL_Trilinos_LIBRARIES    "${Trilinos_LIBRARIES};${Trilinos_TPL_LIBRARIES}")
GLOBAL_SET(TPL_Trilinos_LIBRARY_DIRS "${Trilinos_LIBRARY_DIRS};${Trilinos_TPL_LIBRARY_DIRS}")