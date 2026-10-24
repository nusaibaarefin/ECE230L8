module mux(
    input [1:0] Sel,
    input [3:0] CEO, You, Fred, Jill,
    input Enable,
    output [3:0] LB
);
 
    assign LB = (Sel[0]  == 0 && Sel[1] == 0 && Enable ) ? CEO :
                (Sel[0]  == 1 & Sel[1] == 0 && Enable ) ? You :
                (Sel[0]  == 0 & Sel[1] == 1 && Enable ) ? Fred :
                (Sel[0]  == 1 & Sel[1] == 1 && Enable ) ? Jill : 0;
               
endmodule