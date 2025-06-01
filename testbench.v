`include "1_bit_adder.v"
module fullbittest;
    
    reg [7:0] ina,inb;
    reg c_in;
    wire [7:0] SUM;
    wire c_out;
    reg clk;
    ful_bit du (.ina(ina),.inb(inb),.c_in(c_in),.SUM(SUM),.c_out(c_out),.clk(clk));
   
    always #5 clk=~clk;

    initial begin
	    $fsdbDumpvars();
	  
	    $monitor("time=%t  a=%b bi=%b cin=%b SUM=%b cout=%b clk=%b ",$time,ina,inb,c_in,SUM,c_out,clk);
	    clk<=0;
	    ina=0; inb=0; c_in=0;
	    #10;
	    
	    ina=8'd10; inb=8'd5; c_in=0;
	    #10;

	    
	    ina=8'd10; inb=8'd2;c_in=0;
	    #10;
	    ina<=8'b00000000; inb<=8'b00000000;c_in=1;
	    #10;
	    ina<=8'd15; inb<=8'd15; c_in=0;
	    #10;

	    $finish;
    end
endmodule
