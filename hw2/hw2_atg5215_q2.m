function[y]= hw2_atg5215_q2(x)

  format long;
  realCube = nthroot(x,3);
  a = 50;
  relError = abs((realCube - a)/realCube);
  counter = 0;
  
  while(relError > 10^-8)
    a = a - (((a^3)-x) / (3 * (a^2)));
    relError = abs((realCube - a)/realCube);
    fprintf('Iterate: %d Guess = %d, Error = %d\n', ++counter, a, relError);
    end
  
  y = a;
endfunction