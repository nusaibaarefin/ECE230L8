module top (
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
);

    wire [3:0]W;
    
    mux abc(
        .CEO(sw[3:0]),
        .You(sw[7:4]),
        .Fred(sw[11:8]),
        .Jill(sw[15:12]),
        .Enable({btnC}),
        .Sel({btnU, btnL}),
        .LB(W[3:0])
    );
    
    demux def(
        .Sel({btnR, btnD}),
        .Enable({btnC}),
        .In(W[3:0]),
        .Lib(led[3:0]),
        .Fire(led[7:4]),
        .School(led[11:8]),
        .Rib(led[15:12])
    );
    
endmodule
    