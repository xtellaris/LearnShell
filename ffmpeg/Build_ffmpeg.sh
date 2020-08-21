#! /bin/bash
PATH="$HOME/Programs/ffmpeg:$PATH" PKG_CONFIG_PATH="$HOME/Programs/src/ffmpeg_build/lib/pkgconfig" ../ffmpeg/configure \
--prefix="$HOME/Programs/src/ffmpeg_build" \
--pkg-config-flags="--static" \
--extra-cflags="-I$HOME/Programs/src/ffmpeg_build/include" \
--extra-ldflags="-L$HOME/Programs/src/ffmpeg_build/lib" \
--extra-libs="-lpthread -lm" \
--bindir="$HOME/Programs/ffmpeg" \
--enable-gpl \
--enable-nonfree \
--enable-gnutls \
--enable-ffnvcodec \
--enable-nvenc \
--enable-cuda \
--enable-cuvid \
--enable-libnpp \
--enable-opencl \
--enable-libmfx \
--enable-libaom \
--enable-libass \
--enable-libfdk-aac \
--enable-libfreetype \
--enable-libmp3lame \
--enable-libopus \
--enable-libvorbis \
--enable-libvpx \
--enable-libx264 \
--enable-libx265 && \
PATH="$HOME/Programs/ffmpeg:$PATH" make -j4 && \
make install && \
hash -r
