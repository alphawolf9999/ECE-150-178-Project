`timescale 1ns / 1ps

module ring_osc ( 

    input enable,
    output osc_out
);

	 wire w1, w2, w3;
    and (osc_out, enable, w1);
    not #2(w1, w2);
    not #2(w2, w3);
    not #2(w3, osc_out);
endmodule



/*
module LUT1 (
    input  [5:0] lut_in,
    output reg   lut_out5,
    output reg   lut_out6           
                  
);                  

(* S="TRUE" *) reg [5:0]  lut_in_r;
wire       lut_out5_d, lut_out6_d;

always @(*) begin
    lut_in_r <= lut_in;
    lut_out5 <= lut_out5_d;
    lut_out6 <= lut_out6_d;
end    

(* LOCK_PINS="ALL", BEL="A6LUT" *) 
LUT6_2 #(
    .INIT (64'h0000_0000_0000_0001)
) LUT_U0 (
    .I0 (lut_in_r[0]), 
    .I1 (lut_in_r[1]), 
    .I2 (lut_in_r[2]), 
    .I3 (lut_in_r[3]), 
    .I4 (lut_in_r[4]), 
    .I5 (1'b1       ),
    .O5 (lut_out5_d ),
    .O6 (lut_out6_d )          
);

endmodule // luts_vlog */
/*
LUT1 #(
.INIT(2’h0) // Logic function
)
LUT1_inst (
.O(O), // 1-bit output: LUT
.I0(I0) // 1-bit input: LUT
);

module ring_osc
#(parameter INV_COUNT = 7)
(
    input enable_IBUF,
    output osc_out
);
    
wire en_out;
and enable_and (en_out, enable_IBUF, osc_out);
genvar i;
generate
for(i = 0; i < INV_COUNT; i = i+1) begin : invs
wire w;
/*
if(i == 0)

   LUT1(.INIT(2'b01)) osc_inv (.O(w), .I0(en_out));
	lut_input  lut_a(a, aw);
   lut_output lut_q(~aw, q);
	 
else
    LUT1(.INIT(2'b01)) osc_inv (.O(w), .I0(invs[i-1].w));


if(i == 0)
    (* LOCK_PINS = "ALL" *) LUT1 #(.INIT(2'b01)) osc_inv (.O(w), .I0(en_out));
else
    (* LOCK_PINS = "ALL" *) LUT1 #(.INIT(2'b01)) osc_inv (.O(w), .I0(invs[i-1].w));
end
endgenerate

assign osc_out = invs[INV_COUNT-1].w;
endmodule
*/
