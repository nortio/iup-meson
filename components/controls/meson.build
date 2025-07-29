controls_src = [
'iup_matrixlist.c',
'matrixex/iupmatex_sort.c',
'matrixex/iupmatex_copy.c',
'matrixex/iupmatex_clipboard.c',
'matrixex/iupmatex_busy.c',
'matrixex/iup_matrixex.c',
'matrixex/iupmatex_find.c',
'matrixex/iupmatex_visible.c',
'matrixex/iupmatex_export.c',
'matrixex/iupmatex_units.c',
'matrixex/iupmatex_undo.c',
'iup_cells.c',
'matrix/iupmat_aux.c',
'matrix/iupmat_getset.c',
'matrix/iupmat_draw.c',
'matrix/iupmat_ex.c',
'matrix/iupmat_edit.c',
'matrix/iupmat_key.c',
'matrix/iupmat_scroll.c',
'matrix/iupmat_numlc.c',
'matrix/iupmatrix.c',
'matrix/iupmat_mark.c',
'matrix/iupmat_mem.c',
'matrix/iupmat_colres.c',
'matrix/iupmat_mouse.c',
'iup_controls.c',
]

controls = static_library('iupcontrols', controls_src, include_directories: ['.', '../../include', '../../src'], dependencies: [cd_dep, iupcd_dep])

controls_dep = declare_dependency(link_with: controls, include_directories: '.')