module ai_power_control (
    input clk,
    input [7:0] workload_pattern,
    output reg enable
);
    always @(posedge clk) begin
        if (workload_pattern > 8'h50)  
            enable <= 1'b1;  
        else
            enable <= 1'b0;  
    end
endmodule
