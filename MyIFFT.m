%https://blog.csdn.net/revitalise/article/details/83118966?utm_medium=distribute.pc_aggpage_search_result.none-task-blog-2~aggregatepage~first_rank_ecpm_v1~rank_aggregation-3-83118966.pc_agg_rank_aggregation&utm_term=%E4%B8%80%E7%BB%B4%E5%82%85%E9%87%8C%E5%8F%B6%E5%8F%98%E6%8D%A2matlab&spm=1000.2123.3001.4430
%实现ifft 
function [after]=MyIFFT(origin)
f=origin;
[M,N]=size(f);
jj=0+1i;
G1=zeros(M,M);
 for a=0:M-1
	for b=0:M-1
	   G1(a+1,b+1)= exp(   ( jj*2*pi*( a * b )  )/M  );
	end
 end
 G1=G1*(1/M);

G2=zeros(N,N);
 for a=0:N-1
	for b=0:N-1
	   G2(a+1,b+1)= exp(   ( jj*2*pi*( a * b )  )/N  );
	end
 end
 G2=G2*(1/N);
after=G1*origin*G2;
end