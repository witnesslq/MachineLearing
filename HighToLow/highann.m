function error_num = ann(p,t,model,test)
    %神经网络拓扑的生成
    net = newff(p,t,model);
    %学习速率
    net.trainParam.lr=0.1;
    %收敛参数
    net.trainParam.epochs=5000;
    net.trainParam.goal=1e-6;
    net.trainParam.max_fail=1000;
    
    %用训练集训练
    net = train(net,p,t);
    %用测试集测试
    ann = sim(net,test)

    test = test';
    %统计错误数与作图
    error_num = 0;
    for j=1:12
        k=j-1;
        for i=1:25
            if ( (ann(k*25+i)<k+0.5) || (ann(k*25+i)>k+1.5))
                error_num = error_num+1;
            end
        end
    end
end