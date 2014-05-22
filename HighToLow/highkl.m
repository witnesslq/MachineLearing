%high-kl
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
end

[coef,score,latent,t2] = princomp(h');
latent=100*latent/sum(latent);
figure(1)
pareto(latent);

kl=score';
figure(2)
for i=1:25
    plot(kl(1,i), kl(2,i), 'r*');hold on;
end

for i=26:50
    plot(kl(1,i), kl(2,i), 'g*');hold on;
end

for i=51:75
    plot(kl(1,i), kl(2,i), 'b*');hold on;
end

for i=76:100
    plot(kl(1,i), kl(2,i), 'y*');hold on;
end

for i=101:125
    plot(kl(1,i), kl(2,i), 'k*');hold on;
end

for i=126:150
    plot(kl(1,i), kl(2,i), 'm*');hold on;
end

for i=151:175
    plot(kl(1,i), kl(2,i), 'ro');hold on;
end

for i=176:200
    plot(kl(1,i), kl(2,i), 'go');hold on;
end

for i=201:225
    plot(kl(1,i), kl(2,i), 'bo');hold on;
end

for i=226:250
    plot(kl(1,i), kl(2,i), 'ko');hold on;
end

for i=251:275
    plot(kl(1,i), kl(2,i), 'yo');hold on;
end

for i=276:300
    plot(kl(1,i), kl(2,i), 'mo');hold on;
end