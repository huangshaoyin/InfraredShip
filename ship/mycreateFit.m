function [fitresult, gof] = mycreateFit(x0, conre)
%CREATEFIT(X0,CONRE)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : x0
%      Y Output: conre
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 15-Sep-2015 23:05:36


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( x0, conre );

% Set up fittype and options.
ft = fittype( 'gauss3' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0];
opts.StartPoint = [0.118385416666667 1 5.67102208382439 0.0318229166666667 72 4.11143900975369 0.0274264701147686 79 5.7515418959999];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'conre vs. x0', 'untitled fit 1', 'Location', 'NorthEast' );
% Label axes
xlabel( 'x0' );
ylabel( 'conre' );
grid on

