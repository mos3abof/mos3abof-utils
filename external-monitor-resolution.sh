# Add support for better modes on external monitor

xrandr --newmode "1280x1024" 109.00 1280 1368 1496 1712 1024 1027 1034 1063 -hsync +vsync
xrandr --addmode VGA1 1280x1024
xrandr --output VGA1 --rate 75 --mode 1280x1024
