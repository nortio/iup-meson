project('iup', ['c', 'cpp'], )

subdir('src')
subdir('libs/cd')
subdir('libs/im')
subdir('components/iupcd')
subdir('components/controls')
subdir('components/iupscintilla')

if get_option('build_tools')
    subdir('tools/vled')
endif

if get_option('build_examples')
    subdir('examples/notepad')
endif
