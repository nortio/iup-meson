libexif_src = [
    'exif-ifd.c',
    'exif-loader.c',
    'exif-byte-order.c',
    'exif-utils.c',
    'exif-entry.c',
    'exif-mnote-data.c',
    'pentax/mnote-pentax-entry.c',
    'pentax/mnote-pentax-tag.c',
    'pentax/exif-mnote-data-pentax.c',
    'exif-format.c',
    'exif-log.c',
    'exif-content.c',
    'exif-tag.c',
    'exif-data.c',
    'canon/mnote-canon-entry.c',
    'canon/mnote-canon-tag.c',
    'canon/exif-mnote-data-canon.c',
    'exif-mem.c',
    'fuji/mnote-fuji-entry.c',
    'fuji/mnote-fuji-tag.c',
    'fuji/exif-mnote-data-fuji.c',
    'olympus/mnote-olympus-entry.c',
    'olympus/mnote-olympus-tag.c',
    'olympus/exif-mnote-data-olympus.c',
]

libexif = static_library('libexif', libexif_src, include_directories: ['.', '../'])

libexif_dep = declare_dependency(link_with: libexif, include_directories: ['.', '../'])