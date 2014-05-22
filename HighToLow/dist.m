function distance=dist(x,y)
    sum=0;
    for i=1:32
        sum=sum+(x(i)-y(i))^2;
    end
    distance=sqrt(sum);
end