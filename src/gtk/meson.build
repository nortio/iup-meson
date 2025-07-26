gtk_driver_src = [
    'gtk/iupgtk_tree.c',
    'gtk/iupgtk_fontdlg.c',
    'gtk/iupgtk_clipboard.c',
    'gtk/iupgtk_frame.c',
    'gtk/iupgtk_font.c',
    'gtk/iupgtk_calendar.c',
    'gtk/iupgtk_canvas.c',
    'gtk/iupgtk_toggle.c',
    'gtk/iupgtk_button.c',
    'gtk/iupgtk_tabs.c',
    'gtk/iupgtk_loop.c',
    'gtk/iupgtk_messagedlg.c',
    'gtk/iupgtk_text.c',
    'gtk/iupgtk_dialog.c',
    'gtk/iupgtk_label.c',
    'gtk/iupgtk_focus.c',
    'gtk/iupgtk_timer.c',
    'gtk/iupgtk_key.c',
    'gtk/iupgtk_common.c',
    'gtk/iupgtk_menu.c',
    'gtk/iupgtk_str.c',
    'gtk/iupgtk_tips.c',
    'gtk/iupgtk_image.c',
    'gtk/iupgtk_draw_cairo.c',
    'gtk/iupgtk_globalattrib.c',
    #gtk/iupgtk_draw_gdk.c',
    'gtk/iupgtk_dragdrop.c',
    'gtk/iupgtk_list.c',
    'gtk/iupgtk_open.c',
    'gtk/iupgtk_help.c',
    'gtk/iupgtk_progressbar.c',
    'gtk/iupgtk_filedlg.c',
    'gtk/iupgtk_val.c',
    'mot/iupunix_info.c',
]

gtk_mac_driver_src = [
    'src/gtk/iupmac_help.c',
    'src/gtk/iupmac_info.c',
]
os = host_machine.system()

if os == 'macos'
    gtk_driver_src += gtk_mac_driver_src
endif