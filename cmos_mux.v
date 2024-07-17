module mux_cmos(out, i0,i1,s);
    input i0,i1,s;
    output out;
    wire sbar;
    nor nt(sbar,s,s);
    cmos(out,i0,sbar,s);
    cmos(out,i1,sbar,s);
endmodule