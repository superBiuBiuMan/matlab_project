%卷积插值公式
%https://segmentfault.com/a/1190000012473439
function [value]=S(x)
	x=abs(x);
	if(x<1)
		value=1-2*x^2+x^3;
	elseif(x>=1 && x<2)
		value=4-8*x+5*x^2-x^3;
	else
		value=0;
	end
end