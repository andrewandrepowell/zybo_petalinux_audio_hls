/*
 * fir.c
 *
 *  Created on: Aug 7, 2016
 *      Author: andrewandrepowell2
 */
#include "fir.h"

void fir_setup( fir* ptr, uint32_t phy_base_addr, fir_mem_access perform_mem_access, void* param )
{
	ptr->phy_base_addr = phy_base_addr;
	ptr->perform_mem_access = perform_mem_access;
	ptr->param = param;

	fir_write_mem( ptr, FIR_REG_INPUT_VAL, 0 );				/* Insert value so that an output value is ready. */
	fir_write_mem( ptr, FIR_REG_CONTROL, 1 );				/* Start IP. */
}

int32_t fir_perform( fir* ptr, int32_t input_val )
{
	typedef union { uint32_t u; int32_t s; } convert_type;
	convert_type output_val;
	convert_type input_val_0;

	/* With polling, block on the ap_done bit in the control register. */
	while ( ! ( fir_read_mem( ptr, FIR_REG_CONTROL ) & ( 1 << 1 ) ) )
		continue;

	/* Acquire output value and insert new input value. */
	input_val_0.s = input_val;
	output_val.s = fir_read_mem( ptr, FIR_REG_OUTPUT_VAL );
	fir_write_mem( ptr, FIR_REG_INPUT_VAL, input_val_0.u );
	fir_write_mem( ptr, FIR_REG_CONTROL, 1 );
	return output_val.u;
}
