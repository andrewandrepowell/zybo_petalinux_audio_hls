#include <stdint.h>
#include "cpp_FIR.h"

void fir( const int32_t* input_val, int32_t* output_val )
{
#pragma HLS INTERFACE s_axilite port=input_val bundle=BUS_A
#pragma HLS INTERFACE s_axilite port=output_val register bundle=BUS_A
#pragma HLS INTERFACE s_axilite port=return bundle=BUS_A

	/* generic Filter class itself was originally designed by Xilinx. */

	/*
	FIR filter designed with
	 http://t-filter.appspot.com
	 http://t-filter.engineerjs.com/

	sampling frequency: 48000 Hz

	fixed point precision: 16 bits

	* 0 Hz - 2048 Hz
	  gain = 1
	  desired ripple = 5 dB
	  actual ripple = n/a

	* 8192 Hz - 24000 Hz
	  gain = 0
	  desired attenuation = -40 dB
	  actual attenuation = n/a

	*/
	static CFir<coef_t, data_t, acc_t> fir1;
	*output_val = fir1( *input_val ) >> 16;
}
