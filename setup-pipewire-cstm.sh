#!/bin/bash

DEVICE="hw:0,0"

# Modify PipeWire configuration for ALSA sink (output)
sed -i "s|^#alsa.mixer_device =.*|alsa.mixer_device = \"$DEVICE\"|" /usr/share/pipewire/media-session.d/alsa-monitor.conf

# Modify PipeWire configuration for ALSA source (input)
sed -i "s|^#alsa.source.device =.*|alsa.source.device = \"$DEVICE\"|" /usr/share/pipewire/media-session.d/alsa-monitor.conf

echo "=== PipeWire configuration updated with ALSA device $DEVICE ==="
exit 0

