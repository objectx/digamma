
cmake_minimum_required (VERSION 3.16)

include (GNUInstallDirs)

find_package (Threads)

add_executable (${PROJECT_NAME})

target_compile_features (${PROJECT_NAME} PRIVATE cxx_std_14)
target_compile_options (${PROJECT_NAME} PRIVATE -fstrict-aliasing)
target_compile_options (${PROJECT_NAME} PRIVATE $<$<CONFIG:Release>:-fomit-frame-pointer -momit-leaf-frame-pointer>)
target_link_libraries (${PROJECT_NAME} PRIVATE Threads::Threads)

target_compile_definitions (${PROJECT_NAME} PRIVATE
    SYSTEM_SHARE_PATH="${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_DATAROOTDIR}/${PROJECT_NAME}"
    SYSTEM_EXTENSION_PATH="${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_DATAROOTDIR}/${PROJECT_NAME}")

if (CMAKE_SIZEOF_VOID_P EQUAL 4)
    set (DATAMODEL_ ILP32)
    target_compile_definitions (${PROJECT_NAME} PRIVATE DEFAULT_HEAP_LIMIT=32)
else ()
    set (DATAMODEL_ LP64)
    target_compile_definitions (${PROJECT_NAME} PRIVATE DEFAULT_HEAP_LIMIT=64)
endif ()

target_sources (${PROJECT_NAME} PRIVATE
                arith.cpp
                bag.cpp
                bit.cpp
                equiv.cpp
                fasl.cpp
                file.cpp
                hash.cpp
                interpreter.cpp
                ioerror.cpp
                list.cpp
                main.cpp
                nanoasm.cpp
                object_factory.cpp
                object_heap.cpp
                object_heap_compact.cpp
                object_set.cpp
                object_slab.cpp
                port.cpp
                printer.cpp
                reader.cpp
                serialize.cpp
                socket.cpp
                subr_base.cpp
                subr_base_arith.cpp
                subr_bitwise.cpp
                subr_bvector.cpp
                subr_file.cpp
                subr_fixnum.cpp
                subr_flonum.cpp
                subr_hash.cpp
                subr_list.cpp
                subr_others.cpp
                subr_port.cpp
                subr_process.cpp
                subr_r5rs_arith.cpp
                subr_socket.cpp
                subr_thread.cpp
                subr_unicode.cpp
                ucs4.cpp
                utf8.cpp
                uuid.cpp
                violation.cpp
                vm0.cpp
                vm1.cpp
                vm2.cpp
                vm3.cpp)

target_sources (${PROJECT_NAME} PRIVATE
                arith.h
                bag.h
                bit.h
                cond.h
                core.h
                equiv.h
                fasl.h
                file.h
                hash.h
                heap.h
                inherent.h
                interlocked.h
                interpreter.h
                ioerror.h
                list.h
                mutex.h
                nanoasm.h
                nanoasm.inc.h
                nanoasm_macro.h
                object.h
                object_factory.h
                object_heap.h
                object_set.h
                object_slab.h
                port.h
                printer.h
                queue.h
                reader.h
                revision.h
                serialize.h
                socket.h
                spinlock.h
                subr.h
                sysdep.h
                ucs4.h
                utf8.h
                uuid.h
                violation.h
                vm.h)
