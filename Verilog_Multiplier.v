module low_power_multiplier (
    input clk,           // Clock input
    input enable,        // AI-controlled clock gating
    input [7:0] A, B,    // 8-bit inputs
    output reg [15:0] P  // 16-bit product output
);
    wire gated_clk;
    assign gated_clk = clk & enable;  // Multiplier runs only when enabled
    always @(posedge gated_clk) begin
        P <= A * B;  // Multiplication operation
    end
endmodule
