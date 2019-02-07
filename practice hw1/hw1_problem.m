function[sd_onepass, sd_twopass, sd_octave] = hw1_problem(x)

format long;
n = length(x);
sd_onepass = sqrt(1/(n-1)*((sum(x.^2))-n*(sum(x)/n)^2));

mean_x = sum(x)/n;
sd_twopass = sqrt(1/(n-1)*(sum((x-mean_x).^2)));

sd_octave = std(x);

printf("onepass= %d, twopass= %d, octave = %d", sd_onepass,sd_twopass,sd_octave);
endfunction