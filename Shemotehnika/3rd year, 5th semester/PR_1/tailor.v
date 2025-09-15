function automatic real real_sin;
    input real x;
    
real sign, x_loc, sum;

begin 
    sign = 1.0;
    x_loc = x;
    
    if (x<0)
    begin
        x_loc = -x;
        sign = -1.0;
    end
    while (x_loc > 3.14159265/2.0)
    begin
        x_loc = x_loc - 3.14159265;
        sign = -1.0 * sign;
    end
    sum = x_loc - (x_loc**3)/6 + (x_loc**5)/120 - (x_loc**7)/5040 + (x_loc**9)/361880 - (x_loc*11/39916800);
    real_sin = sum*sign;
end
    
endfunction




function automatic real real_cos;
    input real x;
    
real sign, x_loc, sum;

begin 
    sign = 1.0;
    x_loc = x;
    
    if (x_loc < 0)
        x_loc = -x_loc;
        
    while (x_loc > 3.14159265/2.0)
    begin
        x_loc = x_loc - 3.14159265;
        sign = -1.0 * sign;
    end
    sum = 1.0 - (x_loc**2)/2 + (x_loc**4)/24 - (x_loc**6)/720 + (x_loc**8)/40320 - (x_loc**10)/3628800;
    real_cos = sum*sign;
end
    
endfunction
