echo "--- Setting up ALSA input for ESSX8336"

# This may be different for your system, you can check it by running arecord -l

INPUT_DEVICE='-c 0'
#INPUT_DEVICE='-c 0 -D 1'

amixer $INPUT_DEVICE cset name='ADC PGA Gain Volume' 7
amixer $INPUT_DEVICE cset name='ADC Capture Volume' 150
amixer $INPUT_DEVICE cset name='Internal Mic Switch' on
amixer $INPUT_DEVICE cset name='Headset Mic Switch' on
#amixer $INPUT_DEVICE cset name='Mic Boost Switch' on
amixer $INPUT_DEVICE cset name='Differential Mux' 'lin2-rin2'
#amixer $INPUT_DEVICE cset name='Digital Mic Mux' 1

echo "=== Done!"
exit 0
