iupcd_src = [
    'iup_draw_cd.c',
    'iup_cdutil.c',
    'iup_cd.c',
]

iupcd = static_library(
    'iupcd',
    iupcd_src,
    include_directories: ['../../src'],
    dependencies: [cd_dep, iup_dep],
    c_args: '-Wno-incompatible-function-pointer-types',
)

iupcd_dep = declare_dependency(link_with: iupcd, include_directories: '.', dependencies: [cd_dep])