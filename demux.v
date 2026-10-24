module demux(
    input [1:0] Sel,
    input [3:0] In,
    input Enable,
    output [3:0] Lib, Fire, School, Rib
);
   
    assign Lib = (Sel[0] == 0 && Sel[1] == 0 && Enable ? In: 0);
    assign Fire = (Sel[0] == 1 & Sel[1] == 0 && Enable ? In: 0);
    assign School = (Sel[0] == 0 & Sel[1] == 1 && Enable ? In: 0);
    assign Rib = (Sel[0] == 1 & Sel[1] == 1 && Enable ? In: 0);
   
endmodule
