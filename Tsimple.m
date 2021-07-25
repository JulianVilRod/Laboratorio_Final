function M=Tsimple(T)
M = sym(zeros(4,4));
[i,j]=size(T);
[N,D] = numden(T);
for m=1:i
    for n=1:j
        if D(m,n)>1e5
           M(m,n)=0; 
        else
        M(m,n)=T(m,n);
        end 
    end
end
end