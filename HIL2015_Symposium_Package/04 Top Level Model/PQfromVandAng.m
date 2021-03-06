% Copyright (c) 2015 Massachusetts Institute of Technology
% Permission is hereby granted, free of charge, to any person obtaining a copy of this 
% software and associated documentation files (the "Software"), to deal in the Software
% without restriction, including without limitation the rights to use, copy, modify, 
% merge, publish, distribute, sublicense, and/or sell copies of the Software, and to 
% permit persons to whom the Software is furnished to do so, subject to the following 
% conditions:
% 
% 
% The above copyright notice and this permission notice shall be included in 
% all copies or substantial portions of the Software.
% 
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
% INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
% PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT 
% HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION 
% OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
% SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

function [P, Q] = PQfromVandAng(V1,V2,angle,X)
% Calculate real and reactive power flow.
% V1 and V2 are source #1 and 2 RMS voltage.  
% angle is phase angle between them.
% X is impedance along that path.

P = ((V1*V2)/(X))*sin(angle);
Q = V1^2/(X)-(V1*V2/(X))*cos(angle);

end

