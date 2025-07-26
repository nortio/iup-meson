gtk_driver_src = [
    'src/gtk/iupgtk_tree.c',
    'src/gtk/iupgtk_fontdlg.c',
    'src/gtk/iupgtk_clipboard.c',
    'src/gtk/iupgtk_frame.c',
    'src/gtk/iupgtk_font.c',
    'src/gtk/iupgtk_calendar.c',
    'src/gtk/iupgtk_canvas.c',
    'src/gtk/iupgtk_toggle.c',
    'src/gtk/iupgtk_button.c',
    'src/gtk/iupgtk_tabs.c',
    'src/gtk/iupgtk_loop.c',
    'src/gtk/iupgtk_messagedlg.c',
    'src/gtk/iupgtk_text.c',
    'src/gtk/iupgtk_dialog.c',
    'src/gtk/iupgtk_label.c',
    'src/gtk/iupgtk_focus.c',
    'src/gtk/iupgtk_timer.c',
    'src/gtk/iupgtk_key.c',
    'src/gtk/iupgtk_common.c',
    'src/gtk/iupgtk_menu.c',
    'src/gtk/iupgtk_str.c',
    'src/gtk/iupgtk_tips.c',
    'src/gtk/iupgtk_image.c',
    'src/gtk/iupgtk_draw_cairo.c',
    'src/gtk/iupgtk_globalattrib.c',
    #src/gtk/iupgtk_draw_gdk.c',
    'src/gtk/iupgtk_dragdrop.c',
    'src/gtk/iupgtk_list.c',
    'src/gtk/iupgtk_open.c',
    'src/gtk/iupgtk_help.c',
    'src/gtk/iupgtk_progressbar.c',
    'src/gtk/iupgtk_filedlg.c',
    'src/gtk/iupgtk_val.c',
    'src/mot/iupunix_info.c',
]

gtk_mac_driver_src = [
    'src/gtk/iupmac_help.c',
    'src/gtk/iupmac_info.c',
]
os = host_machine.system()

if os == 'macos'
    gtk_driver_src += gtk_mac_driver_src
endif