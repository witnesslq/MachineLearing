%c-means
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

%初始以每类第一个点为代表点
rep_point=[];
for i=1:4
    rep_point=[rep_point h(:,1+(i-1)*25)];
end

flag=1;
while (flag)
    %更新代表点
    cluster1=[rep_point(:,1)];cluster2=[rep_point(:,2)];
    cluster3=[rep_point(:,3)];cluster4=[rep_point(:,4)];

    %计算距离
    for i=1:100
        for j=1:4
            distance(j,i)=dist(h(:,i), rep_point(:,j));
        end
    end

    mindist=min(distance);
    row=[];

    %找出最小距离作为分类准则
    for i=1:100
        index=find(distance==mindist(i));
        if(rem(i,25)~=1 && index~=0)
            row=[row; index];
        else
            row=[row;-1];
        end;
    end

    row=rem(row,4);

    %重新分类
    for i=1:100
        if(row(i)==1)
            cluster1 = [cluster1, h(:,i)];
        elseif(row(i)==2)
            cluster2 = [cluster2, h(:,i)];
        elseif(row(i)==3)
            cluster3 = [cluster3, h(:,i)];
        elseif(row(i)==0)
            cluster4 = [cluster4, h(:,i)]; 
        end
    end

    %计算均值
    [m1,n1]=size(cluster1);[m2,n2]=size(cluster2);
    [m3,n3]=size(cluster3);[m4,n4]=size(cluster4);
    avg1=sum(cluster1,2)/n1;avg2=sum(cluster2,2)/n2;
    avg3=sum(cluster3,2)/n3;avg4=sum(cluster4,2)/n4;

    %更新代表点
    new_rep=[avg1, avg2, avg3, avg4];
    %结束条件
    if (isequal(new_rep, rep_point))
        flag=0;
    else
        rep_point=new_rep;
    end
end

%错误统计
error_num=0;
for i=1:4
    for j=1:25       
        if (row((i-1)*25+j)~=rem(i,4) && row((i-1)*25+j)~=-1)
            error_num=error_num+1;
        end
    end
end

error_num