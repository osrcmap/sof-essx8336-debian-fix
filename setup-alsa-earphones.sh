#!/bin/bash

echo "--- Setting up ALSA output for ESSX8336"

# This may be different for your system, you can check it by running aplay -l
OUTPUT_DEVICE='-c 0'

amixer $OUTPUT_DEVICE cset name='Speaker Switch' on
amixer $OUTPUT_DEVICE cset name='Headphone Playback Volume' 3,3
amixer $OUTPUT_DEVICE cset name='Right Headphone Mixer Right DAC Switch' on
amixer $OUTPUT_DEVICE cset name='Left Headphone Mixer Left DAC Switch' on
amixer $OUTPUT_DEVICE cset name='DAC Playback Volume' 999,999
amixer $OUTPUT_DEVICE cset name='Headphone Mixer Volume' 999,999
amixer $OUTPUT_DEVICE sset Headphone 3

echo "=== Done!"
exit 0

