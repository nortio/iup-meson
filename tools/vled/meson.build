

executable(
    'vled',
    [
        'iup_vled.c',
        #'vled_image_editor.c',
        'iup_vled_imgs.c',
    ],
    include_directories: '../../src',
    c_args: [
      '-DUSE_NO_OPENGL',
      '-DUSE_NO_PLOT',
      '-DUSE_NO_WEB',
    ],
    dependencies: [iup_dep, cd_dep, im_dep, controls_dep, iup_scintilla_dep]
)