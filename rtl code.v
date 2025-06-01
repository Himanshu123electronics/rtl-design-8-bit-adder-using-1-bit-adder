//RTL CODE
//1_bit_adder
module full_bit (a,b,cin,sum,cout);
    input a;
    input b;
    input cin;

    output sum;
    output cout;

   assign sum=a ^ b ^ cin;
   assign cout =(a&b) |(b&cin) | (a&cin);
endmodule

//8_bit_adder
module ful_bit (ina,inb,c_in,SUM,c_out,clk);
    input [7:0] ina;
    input [7:0] inb;
    input c_in;
    input clk;
    output reg [7:0] SUM;
    output reg c_out;
    wire [7:0] sum_temp;
    wire [7:0] c_temp;
  //instantiation of full_bit

    full_bit uut1(ina[0],inb[0],c_in,sum_temp[0],c_temp[0]);
    full_bit uut2(ina[1],inb[1],c_temp[0],sum_temp[1],c_temp[1]);
    full_bit uut3(ina[2],inb[2],c_temp[1],sum_temp[2],c_temp[2]);
    full_bit uut4(ina[3],inb[3],c_temp[2],sum_temp[3],c_temp[3]);
    full_bit uut5(ina[4],inb[4],c_temp[3],sum_temp[4],c_temp[4]);
    full_bit uut6(ina[5],inb[5],c_temp[4],sum_temp[5],c_temp[5]);
    full_bit uut7(ina[6],inb[6],c_temp[5],sum_temp[6],c_temp[6]);
    full_bit uut8(ina[7],inb[7],c_temp[6],sum_temp[7],c_temp[7]);
    always @(posedge clk) begin
	    SUM<=sum_temp;
	    c_out<=c_temp[7];
    end

endmodule
