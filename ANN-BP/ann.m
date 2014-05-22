function error_num = ann(p,t,model,test)
    %神经网络拓扑的生成
    net = newff(p,t,model);
    %学习速率
    net.trainParam.lr=0.1;
    %收敛参数
    net.trainParam.epochs=5000;
    net.trainParam.goal=1e-6;
    net.trainParam.max_fail=100;
    
    %用训练集训练
    net = train(net,p,t);
    %用测试集测试
    ann = sim(net,test);

    test = test';
    %统计错误数与作图
    error_num = 0;
    for i=1:50
        if (ann(i) < 0)
            error_num = error_num+1;
            plot(test(i,1),test(i,2),'r*');hold on;
        else
            plot(test(i,1),test(i,2),'g*');hold on;
        end
    end
    for i=51:105
        if (ann(i) > 0)
            error_num = error_num+1;
            plot(test(i,1),test(i,2),'ro');hold on;
        else
            plot(test(i,1),test(i,2),'go');hold on;
        end
    end
end