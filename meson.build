project('iup', ['c'])

defines = []

subdir('src/gtk')
subdir('src/win')

gtk3 = dependency('gtk+-3.0')
gdk = dependency('gdk-3.0')
cc = meson.get_compiler('c')
m_dep = cc.find_library('m', required: true)

gtk_driver_deps = [gtk3, gdk, m_dep]

with_x11 = get_option('with_x11')
if with_x11
    gtk_driver_src += 'mot/iupx11_info.c'
    x11 = dependency('x11')
    gtk_driver_deps += x11
else
    gtk_driver_src += 'src/gtk/iupgtk_info.c'
    defines += '-DGDK_NULL'
endif

os = host_machine.system()

#iupdrv = static_library(
#    'iupdrv',
#    gtk_driver_src,
#    dependencies: [gtk3, gdk],
#    include_directories: ['include', 'src'],
#)

main_src = [
    'src/iup_draw.c',
    'src/iup_recplay.c',
    'src/iup_tree.c',
    'src/iup_ledlex.c',
    'src/iup_timer.c',
    'src/iup_font.c',
    'src/iup_progressbar.c',
    'src/iup_flatval.c',
    'src/iup_func.c',
    'src/iup_fill.c',
    'src/iup_elempropdlg.c',
    'src/iup_hbox.c',
    'src/iup_array.c',
    'src/iup_flattabs.c',
    'src/iup_layoutdlg.c',
    'src/iup.c',
    'src/iup_backgroundbox.c',
    'src/iup_fontdlg.c',
    'src/iup_flatbutton.c',
    'src/iup_getparam.c',
    'src/iup_str.c',
    'src/iup_flatseparator.c',
    'src/iup_split.c',
    'src/iup_export.c',
    'src/iup_register.c',
    'src/iup_key.c',
    'src/iup_radio.c',
    'src/iup_frame.c',
    'src/iup_thread.c',
    'src/iup_classattrib.c',
    'src/iup_flattree.c',
    'src/iup_globalattrib.c',
    'src/iup_strmessage.c',
    'src/iup_gridbox.c',
    'src/iup_flatscrollbox.c',
    'src/iup_toggle.c',
    'src/iup_config.c',
    'src/iup_class.c',
    'src/iup_filedlg.c',
    'src/iup_dialog.c',
    'src/iup_scanf.c',
    'src/iup_datepick.c',
    'src/iup_flatlist.c',
    'src/iup_flatlabel.c',
    'src/iup_maskparse.c',
    'src/iup_flatframe.c',
    'src/iup_object.c',
    'src/iup_table.c',
    'src/iup_space.c',
    'src/iup_val.c',
    'src/iup_label.c',
    'src/iup_menu.c',
    'src/iup_animatedlabel.c',
    'src/iup_colorbrowser.c',
    'src/iup_loop.c',
    'src/iup_globalsdlg.c',
    'src/iup_classinfo.c',
    'src/iup_predialogs.c',
    'src/iup_mask.c',
    'src/iup_names.c',
    'src/iup_cbox.c',
    'src/iup_colorbar.c',
    'src/iup_callback.c',
    'src/iup_sbox.c',
    'src/iup_button.c',
    'src/iup_linefile.c',
    'src/iup_open.c',
    'src/iup_colorhsi.c',
    'src/iup_vbox.c',
    'src/iup_image.c',
    'src/iup_scrollbox.c',
    'src/iup_messagedlg.c',
    'src/iup_tabs.c',
    'src/iup_user.c',
    'src/iup_focus.c',
    'src/iup_gauge.c',
    'src/iup_normalizer.c',
    'src/iup_attrib.c',
    'src/iup_show.c',
    'src/iup_box.c',
    'src/iup_flatscrollbar.c',
    'src/iup_text.c',
    'src/iup_zbox.c',
    'src/iup_multibox.c',
    'src/iup_expander.c',
    'src/iup_layout.c',
    'src/iup_ledparse.c',
    'src/iup_childtree.c',
    'src/iup_detachbox.c',
    'src/iup_maskmatch.c',
    'src/iup_dlglist.c',
    'src/iup_colordlg.c',
    'src/iup_progressdlg.c',
    'src/iup_link.c',
    'src/iup_assert.c',
    'src/iup_flattoggle.c',
    'src/iup_classbase.c',
    'src/iup_dropbutton.c',
    'src/iup_canvas.c',
    'src/iup_spin.c',
    'src/iup_dial.c',
    'src/iup_list.c',
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
    include_directories: ['include', 'src'],
    c_args: [
        '-DGDK_DISABLE_DEPRECATED',
        '-DGSEAL_ENABLE',
        '-D_FORTIFY_SOURCE=0',
        defines,
    ],
    dependencies: gtk_driver_deps,
)

iup_dep = declare_dependency(include_directories: 'include', link_with: iup)

executable(
    'main',
    [
        'main.c',
    ],
    include_directories: 'include',
    dependencies: [iup_dep],
)