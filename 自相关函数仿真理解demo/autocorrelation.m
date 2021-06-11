% This function illustrates the cross correlation process in action
%
% Usage:
%           fs = 1000;
%             T = 1/fs;
%             N = 500; % desired length of signal
%             t = [0:N-1]*T; %time vector 
%             f1 = 8; f2=f1*2; 
%             x = sin(2*pi*f1*t) + sin(2*pi*f2*t);
%
%           % To step though each sample use the following:
%           illustrate_xcorr(x,x)
%           
%           % to step through using 50 steps use:
%           illustrate_xcorr(x,x, 50)
%
function autocorrelation(x, y, varargin)
if(length(x) > length(y))
    y(end+1:length(x)) = 0; %zero pad so the signals are the same length
else
    x(end+1:length(y)) = 0; %zero pad so the signals are the same length
end

    num_steps = 2*length(x)-1;
if(nargin ==3)
    arg = varargin{1};
    if(isnumeric(arg))
        num_steps = ceil(abs(arg));
    end
end
if(nargin > 3)
    error('See help on this function to see how to use it properly')
end

[rxy lags] = xcorr(x,y); %cross correlate signals

disp('The signal being autocorrelated is shown in blue (two instances)')
disp('As you hit the space bar the lower plot will move into different lag positions')
disp('The correlation function shown in red is updated for each lag position');
disp('keep pressing the space bar to step through the illustration ...');

figure
plot_width = 0.3; plot_height = 0.25;

top_ax_h = subplot(3,1,1);
plot(x)
axis tight
set(top_ax_h, 'visible','off', 'units', 'normalized')
set(top_ax_h,'position', [0.5-plot_width/2 5/6-plot_height/2 plot_width plot_height])

mid_ax_h = subplot(3,1,2);
plot(y)
axis tight
set(mid_ax_h, 'visible','off', 'units', 'normalized')
set(mid_ax_h,'position', [0.5-plot_width/2-plot_width 5/6-3*plot_height/2-0.01 plot_width plot_height])

bottom_ax_h = subplot(3,1,3);
corr_h = plot(lags,rxy,'r');
axis tight
set(bottom_ax_h,'units', 'normalized','Ytick',[])
set(bottom_ax_h,'position', [0.5-plot_width*3/2 0.2-plot_height/2 plot_width*3 plot_height])
set(corr_h, 'Ydata', ones(1, length(rxy))*NaN); %clear the correlation funciton plot once its set up

normalised_shift_size = 2*plot_width/(num_steps-1);
corr_seg_len = length(rxy)/num_steps;
for k = 1 : num_steps
    if(k > 1)
        new_pos = get(mid_ax_h,'position') + [normalised_shift_size 0 0 0];
        set(mid_ax_h,'position', new_pos);
    end
    set(corr_h, 'Ydata', [rxy(1:round(corr_seg_len*k)) ones(1,length(rxy)-round(corr_seg_len*k))*NaN])
    pause
end