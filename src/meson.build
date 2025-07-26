defines = []
deps = []
includes = ['../include']

subdir('gtk')
subdir('win')

os = host_machine.system()
cc = meson.get_compiler('c')

if os == 'linux'
    gtk3 = dependency('gtk+-3.0')
    gdk = dependency('gdk-3.0')
    m_dep = cc.find_library('m', required: true)

    deps += [gtk3, gdk, m_dep]

    with_x11 = get_option('with_x11')
    if with_x11
        gtk_driver_src += 'mot/iupx11_info.c'
        x11 = dependency('x11')
        deps += x11
    else
        gtk_driver_src += 'gtk/iupgtk_info.c'
        defines += '-DGDK_NULL'
    endif
elif os == 'windows'
    includes += 'win/wdl'
    defines += ['-D_WIN32_WINNT=0x0601','-D_WIN32_IE=0x600','-DWINVER=0x0601','-DNOTREEVIEW','-DCOBJMACROS', '-D_UNICODE', '-DUSE_NEW_DRAW', '-DUNICODE']
    comctl32 = cc.find_library('comctl32', required: true)
    deps += comctl32
endif

#iupdrv = static_library(
#    'iupdrv',
#    gtk_driver_src,
#    dependencies: [gtk3, gdk],
#    include_directories: ['include', 'src'],
#)

main_src = [
    'iup_draw.c',
    'iup_recplay.c',
    'iup_tree.c',
    'iup_ledlex.c',
    'iup_timer.c',
    'iup_font.c',
    'iup_progressbar.c',
    'iup_flatval.c',
    'iup_func.c',
    'iup_fill.c',
    'iup_elempropdlg.c',
    'iup_hbox.c',
    'iup_array.c',
    'iup_flattabs.c',
    'iup_layoutdlg.c',
    'iup.c',
    'iup_backgroundbox.c',
    'iup_fontdlg.c',
    'iup_flatbutton.c',
    'iup_getparam.c',
    'iup_str.c',
    'iup_flatseparator.c',
    'iup_split.c',
    'iup_export.c',
    'iup_register.c',
    'iup_key.c',
    'iup_radio.c',
    'iup_frame.c',
    'iup_thread.c',
    'iup_classattrib.c',
    'iup_flattree.c',
    'iup_globalattrib.c',
    'iup_strmessage.c',
    'iup_gridbox.c',
    'iup_flatscrollbox.c',
    'iup_toggle.c',
    'iup_config.c',
    'iup_class.c',
    'iup_filedlg.c',
    'iup_dialog.c',
    'iup_scanf.c',
    'iup_datepick.c',
    'iup_flatlist.c',
    'iup_flatlabel.c',
    'iup_maskparse.c',
    'iup_flatframe.c',
    'iup_object.c',
    'iup_table.c',
    'iup_space.c',
    'iup_val.c',
    'iup_label.c',
    'iup_menu.c',
    'iup_animatedlabel.c',
    'iup_colorbrowser.c',
    'iup_loop.c',
    'iup_globalsdlg.c',
    'iup_classinfo.c',
    'iup_predialogs.c',
    'iup_mask.c',
    'iup_names.c',
    'iup_cbox.c',
    'iup_colorbar.c',
    'iup_callback.c',
    'iup_sbox.c',
    'iup_button.c',
    'iup_linefile.c',
    'iup_open.c',
    'iup_colorhsi.c',
    'iup_vbox.c',
    'iup_image.c',
    'iup_scrollbox.c',
    'iup_messagedlg.c',
    'iup_tabs.c',
    'iup_user.c',
    'iup_focus.c',
    'iup_gauge.c',
    'iup_normalizer.c',
    'iup_attrib.c',
    'iup_show.c',
    'iup_box.c',
    'iup_flatscrollbar.c',
    'iup_text.c',
    'iup_zbox.c',
    'iup_multibox.c',
    'iup_expander.c',
    'iup_layout.c',
    'iup_ledparse.c',
    'iup_childtree.c',
    'iup_detachbox.c',
    'iup_maskmatch.c',
    'iup_dlglist.c',
    'iup_colordlg.c',
    'iup_progressdlg.c',
    'iup_link.c',
    'iup_assert.c',
    'iup_flattoggle.c',
    'iup_classbase.c',
    'iup_dropbutton.c',
    'iup_canvas.c',
    'iup_spin.c',
    'iup_dial.c',
    'iup_list.c',
]

if os == 'linux'
    main_src += gtk_driver_src
elif os == 'windows'
    main_src += win_driver_src
elif os == 'macos'
    main_src += gtk_driver_src
endif

iup = static_library(
    'iup',
    main_src,
    include_directories: includes,
    c_args: [
        '-DGDK_DISABLE_DEPRECATED',
        '-DGSEAL_ENABLE',
        '-D_FORTIFY_SOURCE=0',
        defines,
    ],
    dependencies: deps,
)

iup_dep = declare_dependency(include_directories: '../include', link_with: iup)