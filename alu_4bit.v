module alu_4bit (
    input [3:0] A, B,
    input [2:0] opcode,
    output reg [3:0] Result,
    output Zero
);
    always @(*) begin
        case(opcode)
            3'b000: Result = A + B;
            3'b001: Result = A - B;
            3'b010: Result = A & B;
            3'b011: Result = A | B;
            3'b100: Result = A ^ B;
            default: Result = 4'b0000;
        endcase
    end
    assign Zero = (Result == 4'b0000);
endmodule
