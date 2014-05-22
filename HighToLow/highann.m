function error_num = ann(p,t,model,test)
    %���������˵�����
    net = newff(p,t,model);
    %ѧϰ����
    net.trainParam.lr=0.1;
    %��������
    net.trainParam.epochs=5000;
    net.trainParam.goal=1e-6;
    net.trainParam.max_fail=1000;
    
    %��ѵ����ѵ��
    net = train(net,p,t);
    %�ò��Լ�����
    ann = sim(net,test)

    test = test';
    %ͳ�ƴ���������ͼ
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