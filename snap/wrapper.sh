#!/bin/sh

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$SNAP/lib:$SNAP/usr/lib:$SNAP/lib/x86_64-linux-gnu:$SNAP/usr/lib/x86_64-linux-gnu"
export QT_PLUGIN_PATH=$SNAP/usr/lib/x86_64-linux-gnu/qt5/plugins
export QT_XKB_CONFIG_ROOT=$SNAP/share/X11/xkb:$QT_XKB_CONFIG_PATH
export XDG_RUNTIME_DIR="$(dirname $XDG_RUNTIME_DIR)"
export XDG_DATA_DIRS=$SNAP/share:$XDG_DATA_DIR

#if [ "$SNAP_ARCH" == "amd64" ]; then
    ARCH="x86_64-linux-gnu"
#elif [ "$SNAP_ARCH" == "armhf" ]; then
#    ARCH="arm-linux-gnueabihf"
#else
#    ARCH="$SNAP_ARCH-linux-gnu"
#fi

export QML2_IMPORT_PATH=$QML2_IMPORT_PATH:$SNAP/usr/lib/$ARCH/qt5/qml
export QML2_IMPORT_PATH=$QML2_IMPORT_PATH:$SNAP/lib/$ARCH

exec "bibletime" "$@"
