project(
    'iup',
    ['c', 'cpp'],
)

subdir('src')

build_extra_libs = get_option('build_extra_libs')

if build_extra_libs
    subdir('libs/cd')
    subdir('libs/im')
    subdir('components/iupcd')
    subdir('components/controls')
    subdir('components/iupscintilla')
endif

if get_option('build_tools')
    if not build_extra_libs
        error(
            'You need to build the extra libraries to build tools (add -Dbuild_extra_libs=true)',
        )
    endif

    subdir('tools/vled')
    subdir('tools/ledc')
endif

if get_option('build_examples')
    if not build_extra_libs
        error(
            'You need to build the extra libraries to build tools (add -Dbuild_extra_libs=true)',
        )
    endif
    subdir('examples/notepad')
endif