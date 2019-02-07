t = 0:.002:1;
tt = exp(-t) .* (sin(2*pi*t)+2);
rt = hw1_atg5215_q2(tt, 10);
round_err = (tt - rt) ./tt ;
plot (t,round_err,'b-');
title ('error in sampling exp(-t)(sin(2\pi t)+2) single precision')
xlabel('t')
ylabel('roundoff error')
% relative error should be about eta = eps(single)/2
rel_round_err = max(abs(round_err)) / (eps('single')/2)