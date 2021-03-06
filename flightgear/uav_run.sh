#!/bin/sh
JSBDIR="/home/user/Programs/jsbsim"
nice fgfs \
     --fdm=jsb \
     --fg-aircraft="$JSBDIR/aircraft" \
     --aircraft=Rascal110-JSBSim           \
     --callsign=UAV                        \
     --lat=42.3799564275                   \
     --lon=-71.0039314263                  \
     --multiplay=out,50,localhost,5002     \
     --multiplay=in,240,localhost,5000      \
     --generic=socket,out,180,localhost,5515,udp,UAVProtocol    \
     --generic=socket,in,180,localhost,5514,udp,InputProtocol       \
     --props=socket,bi,20,,6500,tcp \
     --roll=0 \
     --glideslope=0 \
     --heading=199 \
     --units-meters \
     --uBody=25 \
     --vBody=0 \
     --wBody=0 \
     --altitude=16 \
     --timeofday=noon \
     --geometry=650x550 \
     --shading-flat \
     --bpp=32 \
     --timeofday=noon \
     --disable-anti-alias-hud \
     --disable-hud-3d \
     --disable-sound \
     --disable-fullscreen \
     --disable-random-objects \
     --disable-anti-alias-hud \
     --disable-specular-highlight  \
     --disable-enhanced-lighting \
     --wind=0@0 \
     $*
