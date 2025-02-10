module tb_low_power_multiplier;
    reg clk, enable;
    reg [7:0] A, B;
    wire [15:0] P;

    low_power_multiplier uut (
        .clk(clk),
        .enable(enable),
        .A(A),
        .B(B),
        .P(P)
    );

    always #5 clk = ~clk;  

    initial begin
        clk = 0;
        enable = 1;
        A = 8'h15;
        B = 8'h0A;
        #10;
        
        enable = 0;  
        #10;
        
        enable = 1;
        A = 8'h08;
        B = 8'h03;
        
        #10;
        
        $stop;
    end
endmodule
