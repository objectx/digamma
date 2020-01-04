
cmake_minimum_required (VERSION 3.16)

set (SITE_LIBS "--sitelib=${PROJECT_SOURCE_DIR}/test:${PROJECT_SOURCE_DIR}/sitelib:${PROJECT_SOURCE_DIR}/stdlib")

function (make_test_ name_)
    add_test (NAME ${name_}
              WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
              COMMAND ${PROJECT_NAME}
                    ${ARGN}
                    --heap-limit=128
                    --acc=${CMAKE_CURRENT_BINARY_DIR}
                    --clean-acc
                    ${SITE_LIBS}
                    ${CMAKE_CURRENT_SOURCE_DIR}/${name_}.scm)
endfunction ()

make_test_ (r4rstest)
make_test_ (tspl)
make_test_ (arith)
make_test_ (r5rs_pitfall --r6rs)
make_test_ (syntax-rule-stress-test)
make_test_ (r6rs --r6rs)
make_test_ (r6rs-lib --r6rs)
make_test_ (r6rs-more --r6rs)
make_test_ (r7rs-test --r7rs --top-level-program)
