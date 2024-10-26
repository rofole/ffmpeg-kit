
# build
##Android
### dependency
#### host
1. The following packages are required by the build scripts.

autogen autoconf automake libtool pkg-config curl git doxygen nasm
2. These optional packages should be installed only if you want to build corresponding external libraries.

cmake gcc gperf texinfo yasm bison autogen wget autopoint meson ninja ragel groff gtk-doc-tools libtasn1-1

```
sudo apt-get install autogen autoconf automake libtool pkg-config curl git doxygen nasm cmake gcc gperf texinfo yasm bison autogen wget autopoint meson  ragel groff gtk-doc-tools libtasn1-bin ninja
```

### Common Build process Errors
1. NDK Version Compatibility Issues
   Compilation errors occur whit library aom and sdl when using NDK26, while switch to NDK25 resolves the issues.
2. GnuTLS and OpenSSL confilt:
`GnuTLS and OpenSSL must not be enabled at the same time`. remove `--enable-gnutls` to resolve the issues
3. Android API Version Compatibility Issues
   if  library failed to compile, try switching between API Versions(e.g. from API 26 to API 30, or vice versa) to resolve potential compatibility isseus. 
4. Rebuilding After Failures
   if certail libraries fail to compile, delete the corresponding souce folder and prebuild folder ,and build frm scratch.


### build instuctions
```
source my-env.sh 
./android.sh -h

./android.sh --api-level=26        \
    --no-ffmpeg-kit-protocols       \
    --enable-gpl                    \
    --disable-arm-v7a               \
    --disable-arm-v7a-neon          \
    --disable-x86                   \
    --disable-x86-64                \
    --enable-libvidstab             \
    --enable-rubberband             \
    --enable-x264                   \
    --enable-x265                   \
    --enable-xvidcore               \
    --rebuild-LIBRARY               \
    --reconf-LIBRARY                \
    --enable-android-media-codec    \
    --enable-android-zlib           \
    --enable-chromaprint            \
    --enable-dav1d                  \
    --enable-fontconfig             \
    --enable-freetype               \
    --enable-fribidi                \
    --enable-gmp                    \
    --enable-kvazaar                \
    --enable-lame                   \
    --enable-libaom                 \
    --enable-libass                 \
    --enable-libiconv               \
    --enable-libilbc                \
    --enable-libtheora              \
    --enable-libvorbis              \
    --enable-libvpx                 \
    --enable-libwebp                \
    --enable-libxml2                \
    --enable-opencore-amr           \
    --enable-openh264               \
    --enable-openssl                \
    --enable-opus                   \
    --enable-sdl                    \
    --enable-shine                  \
    --enable-snappy                 \
    --enable-soxr                   \
    --enable-speex                  \
    --enable-srt                    \
    --enable-tesseract              \
    --enable-twolame                \
    --enable-vo-amrwbenc            \
    --enable-zimg                   \
    --reconf-LIBRARY                \
    --rebuild-LIBRARY               \
    --no-archive 

```
#### other options
```
  
  Advanced options:
  --reconf-LIBRARY              run autoreconf before building LIBRARY [no]
  --redownload-LIBRARY          download LIBRARY even if it is detected as already downloaded [no]
  --rebuild-LIBRARY             build LIBRARY even if it is detected as already built [no]
  --no-archive                  do not build Android archive [no]

  ```


  --enable-mediacodec --enable-hwaccel=h264_mediacodec

   configuration: --cross-prefix=aarch64-linux-android- --sysroot=/home/dog/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot --prefix=/home/dog/codes/ocv/ffmpeg/my-ffmpeg-kit/prebuilt/android-arm64/ffmpeg --pkg-config=/usr/bin/pkg-config --enable-version3 --arch=aarch64 --cpu=armv8-a --target-os=android --enable-neon --enable-asm --enable-inline-asm --ar=llvm-ar --cc=aarch64-linux-android26-clang --cxx=aarch64-linux-android26-clang++ --ranlib=llvm-ranlib --strip=llvm-strip --nm=llvm-nm --extra-libs='-L/home/dog/codes/ocv/ffmpeg/my-ffmpeg-kit/prebuilt/android-arm64/cpu-features/lib -lndk_compat' --disable-autodetect --enable-cross-compile --enable-pic --enable-jni --enable-optimizations --enable-swscale --enable-static --enable-shared --disable-ffplay --enable-pthreads --enable-v4l2-m2m --disable-outdev=fbdev --disable-indev=fbdev --enable-small --disable-xmm-clobber-test --disable-debug --enable-lto --disable-neon-clobber-test --disable-postproc --disable-doc --disable-htmlpages --disable-manpages --disable-podpages --disable-txtpages --disable-sndio --disable-schannel --disable-securetransport --disable-xlib --disable-cuda --disable-cuvid --disable-nvenc --disable-vaapi --disable-vdpau --disable-videotoolbox --disable-audiotoolbox --disable-appkit --disable-alsa --disable-cuda --disable-cuvid --disable-nvenc --disable-vaapi --disable-vdpau --enable-libfontconfig --enable-libfreetype --enable-libfribidi --enable-gmp --enable-libmp3lame --enable-libass --enable-iconv --enable-libtheora --enable-libvorbis --enable-libvpx --enable-libwebp --enable-libxml2 --enable-libopencore-amrnb --enable-libshine --enable-libspeex --enable-libdav1d --enable-libkvazaar --enable-libx264 --enable-libxvid --enable-libx265 --enable-libvidstab --enable-librubberband --enable-libilbc --enable-libopus --enable-libsnappy --enable-libsoxr --enable-libaom --enable-chromaprint --enable-libtwolame --enable-sdl2 --enable-libtesseract --enable-libopenh264 --enable-libvo-amrwbenc --enable-libzimg --enable-openssl --enable-libsrt --enable-zlib --enable-mediacodec --enable-gpl



   configuration:
    --cross-prefix=aarch64-linux-android-
    --sysroot=/home/dog/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot
    --prefix=/home/dog/codes/ocv/ffmpeg/my-ffmpeg-kit/prebuilt/android-arm64/ffmpeg
    --pkg-config=/usr/bin/pkg-config --enable-version3
    --arch=aarch64
    --cpu=armv8-a
    --target-os=android
    --enable-neon
    --enable-asm
    --enable-inline-asm
    --ar=llvm-ar
    --cc=aarch64-linux-android26-clang
    --cxx=aarch64-linux-android26-clang++
    --ranlib=llvm-ranlib
    --strip=llvm-strip
    --nm=llvm-nm
    --extra-libs='-L/home/dog/codes/ocv/ffmpeg/my-ffmpeg-kit/prebuilt/android-arm64/cpu-features/lib -lndk_compat'
    --disable-autodetect
    --enable-cross-compile
    --enable-pic
    --enable-jni
    --enable-optimizations
    --enable-swscale
    --enable-static
    --enable-shared
    --disable-ffplay
    --enable-pthreads
    --enable-v4l2-m2m
    --disable-outdev=fbdev
    --disable-indev=fbdev
    --enable-small
    --disable-xmm-clobber-test
    --disable-debug
    --enable-lto
    --disable-neon-clobber-test
    --disable-postproc
    --disable-doc
    --disable-htmlpages
    --disable-manpages
    --disable-podpages
    --disable-txtpages
    --disable-sndio
    --disable-schannel
    --disable-securetransport
    --disable-xlib
    --disable-cuda
    --disable-cuvid
    --disable-nvenc
    --disable-vaapi
    --disable-vdpau
    --disable-videotoolbox
    --disable-audiotoolbox
    --disable-appkit
    --disable-alsa
    --disable-cuda
    --disable-cuvid
    --disable-nvenc
    --disable-vaapi
    --disable-vdpau
    --enable-libfontconfig
    --enable-libfreetype
    --enable-libfribidi
    --enable-gmp
    --enable-libmp3lame
    --enable-libass
    --enable-iconv
    --enable-libtheora
    --enable-libvorbis
    --enable-libvpx
    --enable-libwebp
    --enable-libxml2
    --enable-libopencore-amrnb
    --enable-libshine
    --enable-libspeex
    --enable-libdav1d
    --enable-libkvazaar
    --enable-libx264
    --enable-libxvid
    --enable-libx265
    --enable-libvidstab
    --enable-librubberband
    --enable-libilbc
    --enable-libopus
    --enable-libsnappy
    --enable-libsoxr
    --enable-libaom
    --enable-chromaprint
    --enable-libtwolame
    --enable-sdl2
    --enable-libtesseract
    --enable-libopenh264
    --enable-libvo-amrwbenc
    --enable-libzimg
    --enable-openssl
    --enable-libsrt
    --enable-zlib
    --enable-mediacodec
    --enable-gpl