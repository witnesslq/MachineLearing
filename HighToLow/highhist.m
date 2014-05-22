%highhist
close all;
clear all;
clc

h=[];
for i=1:12
    for j=1:25
        if (i<10 && j<10)
            filename=strcat('Hg00',num2str(i),'_00',num2str(j),'.txt');
        elseif (i<10 && j>=10)
            filename=strcat('Hg00',num2str(i),'_0',num2str(j),'.txt');
        elseif (i>=10 && j<10)
            filename=strcat('Hg0',num2str(i),'_00',num2str(j),'.txt');
        else
            filename=strcat('Hg0',num2str(i),'_0',num2str(j),'.txt');
        end
        h=[h load(filename)];
    end
end

y=[];
for i=1:12
    c=h(:,25*(i-1)+1:25*i);
    y=[y;i*ones(25,1)];
    figure(i)
    for j=1:25
        n=hist(c(:,j),100);
        plot(1:100,n);hold on;
        axis([-10,100,0,15]);
    end
end
