
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
./linux.sh -h
./linux.sh                          \
   --enable-gpl                     \
   --enable-linux-libvidstab        \
   --enable-linux-rubberband        \
   --enable-linux-x265              \
   --enable-linux-xvidcore          \
   --enable-x264	                  \
   --reconf-LIBRARY                 \
   --rebuild-LIBRARY                \
   --full                           





./configure --cross-prefix=x86_64-linux-gnu- --prefix=/home/dog/codes/ocv/ffmpeg/ffmpeg-kit-fork/prebuilt/linux-x86_64/ffmpeg --pkg-config=/usr/bin/pkg-config --enable-version3 --arch=x86_64 --cpu=x86_64 --target-os=linux --disable-neon --enable-asm --enable-inline-asm --ar=/usr/bin/llvm-ar --cc=/usr/bin/clang --cxx=/usr/bin/clang++ --ranlib=/usr/bin/llvm-ranlib --strip=/usr/bin/llvm-strip --nm=/usr/bin/llvm-nm --disable-autodetect --enable-cross-compile --enable-pic --enable-optimizations --enable-swscale --disable-static --enable-shared --enable-pthreads --enable-v4l2-m2m --disable-outdev=fbdev --disable-indev=fbdev --enable-small --disable-xmm-clobber-test --disable-debug --enable-lto --disable-neon-clobber-test --disable-postproc --disable-doc --disable-htmlpages --disable-manpages --disable-podpages --disable-txtpages --disable-sndio --disable-schannel --disable-securetransport --disable-xlib --disable-cuda --disable-cuvid --disable-nvenc --disable-vaapi --disable-vdpau --disable-videotoolbox --disable-audiotoolbox --disable-appkit --disable-cuda --disable-cuvid --disable-nvenc --disable-vaapi --disable-vdpau --enable-libdav1d --enable-libkvazaar --enable-libx264 --enable-libilbc --enable-libaom --enable-chromaprint --enable-libopenh264 --enable-libzimg --enable-openssl --enable-libsrt --enable-zlib --enable-alsa --enable-libfontconfig --enable-libfreetype --enable-libfribidi --enable-gmp --enable-libmp3lame --enable-libass --enable-iconv --enable-libtheora --enable-libvorbis --enable-libvpx --enable-libwebp --enable-libxml2 --enable-libopencore-amrnb --enable-libshine --enable-libspeex --enable-opencl --enable-libxvid --enable-libx265 --enable-libvidstab --enable-librubberband --enable-libv4l2 --enable-libopus --enable-libsnappy --enable-libsoxr --enable-libtwolame --enable-sdl2 --enable-libtesseract --enable-vaapi --enable-libvo-amrwbenc --enable-gpl