#!/bin/sh

JSBDIR="/home/user/Programs/jsbsim"

nice fgfs \
     --fdm=jsb \
     --fg-aircraft="$JSBDIR/aircraft"    \
     --aircraft=followme                   \
     --callsign=UGV                        \
     --airport=KBOS                        \
     --runway=22R                          \
     --multiplay=out,240,127.0.0.1,5000     \
     --multiplay=in,50,127.0.0.1,5002      \
     --generic=socket,out,180,localhost,5526,udp,UGVProtocol     \
     --generic=socket,in,180,localhost,5525,udp,InputProtocol       \
     --props=socket,bi,20,,6600,tcp \
     --altitude=0.0                \
     --timeofday=noon              \
     --geometry=650x550            \
     --bpp=16                      \
     --disable-anti-alias-hud      \
     --disable-hud-3d              \
     --disable-horizon-effect      \
     --timeofday=noon              \
     --shading-flat                \
     --disable-sound               \
     --disable-fullscreen          \
     --disable-random-objects      \
     --disable-specular-highlight  \
     --disable-anti-alias-hud      \
     --fog-disable                 \
     --wind=0@0                    \
     $*
