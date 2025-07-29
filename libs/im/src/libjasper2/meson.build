libjasper2_src = [
    'base/jas_version.c',
    'base/jas_string.c',
    'base/jas_tmr.c',
    'base/jas_debug.c',
    'base/jas_icc.c',
    'base/jas_stream.c',
    'base/jas_cm.c',
    'base/jas_getopt.c',
    'base/jas_init.c',
    'base/jas_malloc.c',
    'base/jas_tvp.c',
    'base/jas_image.c',
    'base/jas_iccdata.c',
    'base/jas_seq.c',
    'jpc/jpc_t1dec.c',
    'jpc/jpc_t1cod.c',
    'jpc/jpc_tagtree.c',
    'jpc/jpc_mqdec.c',
    'jpc/jpc_tsfb.c',
    'jpc/jpc_dec.c',
    'jpc/jpc_t1enc.c',
    'jpc/jpc_t2cod.c',
    'jpc/jpc_qmfb.c',
    'jpc/jpc_mqcod.c',
    'jpc/jpc_bs.c',
    'jpc/jpc_math.c',
    'jpc/jpc_mqenc.c',
    'jpc/jpc_util.c',
    'jpc/jpc_mct.c',
    'jpc/jpc_cs.c',
    'jpc/jpc_t2dec.c',
    'jpc/jpc_enc.c',
    'jpc/jpc_t2enc.c',
    'jp2/jp2_cod.c',
    'jp2/jp2_enc.c',
    'jp2/jp2_dec.c',
    '../jas_binfile.c',
]

libjasper2_cargs = [
    # TODO: fix this
    '-Wno-unused-function',
    '-DEXCLUDE_JPG_SUPPORT',
    '-DEXCLUDE_MIF_SUPPORT',
    '-DEXCLUDE_PNM_SUPPORT',
    '-DEXCLUDE_BMP_SUPPORT',
    '-DEXCLUDE_PGX_SUPPORT',
    '-DEXCLUDE_RAS_SUPPORT',
    '-DEXCLUDE_TIFF_SUPPORT',
    '-DJAS_GEO_OMIT_PRINTING_CODE',
    '-DJAS_BINFILE',
    '-DJAS_TYPES',
    '-DJASPER_2',
]

cc = meson.get_compiler('c')

if host_machine.system() == 'windows' and cc.get_id() == 'msvc'
    libjasper2_cargs += '-DJAS_WIN_MSVC_BUILD'
else
    libjasper2_cargs += ['-DJAS_HAVE_UNISTD_H', '-DJAS_HAVE_STDINT_H']
endif

libjasper2 = static_library(
    'jasper2',
    libjasper2_src,
    include_directories: ['jasper', '../../include'],
    c_args: libjasper2_cargs,
)

libjasper2_dep = declare_dependency(link_with: libjasper2, include_directories: ['jasper'])