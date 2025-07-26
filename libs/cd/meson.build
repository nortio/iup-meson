cd_src = [
    'src/cd_text.c',
    'src/cd_vectortext.c',
    'src/wd.c',
    'src/cd_attributes.c',
    #'src/cairo/cdcairoprn_win32.c',
    #'src/cairo/cdcaironative_x11.c',
    'src/cairo/cdcairosvg.c',
    'src/cairo/cdcairops.c',
    'src/cairo/cdcairoirgb.c',
    'src/cairo/cdcaironative_gdk.c',
    'src/cairo/cdcairoimg.c',
    #'src/cairo/cdcaironative_win32.c',
    #'src/cairo/cdcairoprn_gtk.c',
    'src/cairo/cdcairoplus.c',
    'src/cairo/cdcairo.c',
    'src/cairo/cdcairopdf.c',
    'src/cairo/cdcairodbuf.c',
    #'src/cairo/cdcairoemf.c',
    'src/cd_primitives.c',
    'src/cd_bitmap.c',
    'src/cd_image.c',
    'src/svg/cdsvg.c',
    'src/svg/base64.c',
    'src/svg/lodepng.c',
    'src/minizip/zip.c',
    'src/minizip/ioapi.c',
    'src/minizip/minizip.c',
    'src/minizip/miniunzip.c',
    'src/minizip/unzip.c',
    'src/drv/cdirgb.c',
    #'src/drv/cdgl.c',
    'src/drv/cddgn.c',
    #'src/drv/cdpptx.c',
    #'src/drv/pptx.c',
    'src/drv/cddxf.c',
    'src/drv/cdps.c',
    #'src/drv/cdcgm.c',
    'src/drv/cdmf.c',
    'src/drv/cdpicture.c',
    'src/drv/cddebug.c',
    #'src/drv/cdim.c',
    #'src/drv/cdpdf.c',
    'src/drv/cgm.c',
    'src/rgb2map.c',
    'src/cd.c',
    'src/cd_util.c',
    'src/cd_active.c',
    'src/wdhdcpy.c',
    # null drivers 
    'src/drv/cd0wmf.c',
    'src/drv/cd0emf.c',
    'src/drv/cd0prn.c',

    'src/sim/sim_linepolyfill.c',
    'src/sim/sim.c',
    'src/sim/cd_truetype.c',
    'src/sim/sim_text.c',
    'src/sim/sim_primitives.c',
    'src/sim/cdfontex.c',
]

cd_src_x11 = [
    'src/x11/cdxdbuf.c',
    'src/x11/cdximg.c',
    'src/x11/cdxclp.c',
    'src/x11/cdx11.c',
    'src/x11/xvertex.c',
    'src/x11/cdxnative.c',
]

cd_src_xrender = [
    'src/xrender/cdxrender.c',
    'src/xrender/cdxrplus.c',
]

cd_src_haiku = [
    'src/haiku/cdhaiku.cpp',
    'src/haiku/cdhaikunative.cpp',
    'src/haiku/cdhaikudbuf.cpp',
]

cd_src_gdiplus = [
    'src/gdiplus/cdwgdiplus.c',
    'src/gdiplus/cdwdbufp.cpp',
    'src/gdiplus/cdwimgp.cpp',
    'src/gdiplus/cdwinp.cpp',
    'src/gdiplus/cdwprnp.cpp',
    'src/gdiplus/cdwemfp.cpp',
    'src/gdiplus/cdwclpp.cpp',
    'src/gdiplus/cdwnativep.cpp',
]

cd_src_win32 = [
    'src/win32/cdwwmf.c',
    'src/win32/cdwin.c',
    'src/win32/cdwnative.c',
    'src/win32/cdwimg.c',
    'src/win32/cdwdbuf.c',
    'src/win32/cdwprn.c',
    'src/win32/wmf_emf.c',
    'src/win32/cdwclp.c',
    'src/win32/cdwdib.c',
    'src/win32/cdwemf.c',
]

cd_src_lua = [
    'src/lua5/cdlua5.c',
    'src/lua5/cdlua5ctx.c',
    'src/lua5/cdluagl5.c',
    'src/lua5/cdluacontextplus5.c',
    'src/lua5/cdluacairo5.c',
    'src/lua5/cdlua5_active.c',
    'src/lua5/cdlua5_canvas.c',
    'src/lua5/cdluapdf5.c',
    'src/lua5/cdluaim5.c',
    'src/lua5/cdluadirect2d5.c',
    'src/lua5/cdvoid5.c',
]

cd_src_cgm = [
    'src/intcgm/cgm_txt_parse.c',
    'src/intcgm/cgm_bin_get.c',
    'src/intcgm/cd_intcgm.c',
    'src/intcgm/cgm_txt_get.c',
    'src/intcgm/cgm_play.c',
    'src/intcgm/cgm_sism.c',
    'src/intcgm/cgm_list.c',
    'src/intcgm/cgm_bin_parse.c',
]

cd_src_gdk = [
    'src/gdk/cdgdkclp.c',
    'src/gdk/cdgdknative.c',
    'src/gdk/cdgdkimg.c',
    'src/gdk/cdgdk.c',
    'src/gdk/cdgdkdbuf.c',
]

cd_src_direct2d = [
    'src/direct2d/cd_d2d_text.c',
    'src/direct2d/cdwnative_d2d.c',
    'src/direct2d/cdwdirect2d.c',
    'src/direct2d/cdwin_d2d.c',
    'src/direct2d/cdwimg_d2d.c',
    'src/direct2d/cdwprn_d2d.c',
    'src/direct2d/cd_d2d_image.c',
    'src/direct2d/cdwimgrgb_d2d.c',
    'src/direct2d/cd_d2d_draw.c',
    'src/direct2d/cd_d2d.c',
    'src/direct2d/cdwdbuf_d2d.c',
]

freetype = dependency('freetype2')
zlib = dependency('zlib')

deps = [freetype, zlib]

defines = ['-O2']


os = host_machine.system()
if os == 'linux'
    cc = meson.get_compiler('c')
    m_dep = cc.find_library('m', required: true)

    pangocairo = dependency('pangocairo')
    cairo = dependency('cairo')
    gdk = dependency('gdk-3.0')
    atk = dependency('atk') 
    fontconfig = dependency('fontconfig')
    deps += [pangocairo, cairo, gdk, atk, fontconfig, m_dep]
    defines += ['-DGDK_NULL', '-DGDK_DISABLE_DEPRECATED', '-DGSEAL_ENABLE','-DUSE_GTK3']
endif

cd_lib = library(
    'cd',
    cd_src,
    dependencies: deps,
    include_directories: ['include', 'src/sim'],
    c_args: defines,
)

cd_dep = declare_dependency(
    link_with: cd_lib,
    include_directories: 'include'
)