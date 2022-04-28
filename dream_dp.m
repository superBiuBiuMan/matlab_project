%https://blog.csdn.net/qq_20823641/article/details/51854660?utm_source=blogxgwz4
%https://blog.csdn.net/qq_37431083/article/details/105209119
%https://www.cnblogs.com/laumians-notes/p/8592968.html
%理想低频滤波 频谱中心的距离
function[dream_dp_out]=dream_dp(img)
    [M,N]=size(img);
    picf=fftshift(img);
    D0=20;%定义通道半径 截止频率
    dream_dp_out=zeros(M,N);
    for u=1:M
		for v=1:N
            %%到频谱的距离
			distance=sqrt(  ( u-(M/2)  )^2 + ( v-(N/2)  )^2  );
                if distance<=D0
                    %距离小于D0的设置为1,通过(低频部分)
                    H=1;
                else 
                    %距离小于D0的设置为0,不通过(高频部分)
                    H=0;
                end
                dream_dp_out(u,v)=H*picf(u,v);
		end
    end
end
