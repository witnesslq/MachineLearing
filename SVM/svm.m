%SVM
clear all;
close all;
clc

x1(1,1)=1.8796; x1(1,2)=1.8041;
x1(2,1)=2.6801; x1(2,2)=2.7526;
x1(3,1)=3.6284; x1(3,2)=1.3313;
x1(4,1)=4.7302; x1(4,2)=3.0267;
x1(5,1)=5.7865; x1(5,2)=0.3089;
x1(6,1)=7.1831; x1(6,2)=2.9453;
x1(7,1)=7.2395; x1(7,2)=3.6268;
x1(8,1)=8.0763; x1(8,2)=4.9714;
x1(9,1)=9.9172; x1(9,2)=3.9551;
x1(10,1)=11.7397; x1(10,2)=3.9500;
x1(11,1)=12.8685; x1(11,2)=2.4619;
x1(12,1)=12.5289; x1(12,2)=3.5313;
x1(13,1)=13.3206; x1(13,2)=4.4376;
x1(14,1)=15.7457; x1(14,2)=0.9094;
x1(15,1)=15.4758; x1(15,2)=5.2898;
x1(16,1)=17.2917; x1(16,2)=5.2197;
x1(17,1)=18.9338; x1(17,2)=3.7324;
x1(18,1)=19.3299; x1(18,2)=2.0778;
x1(19,1)=20.7408; x1(19,2)=5.2698;
x1(20,1)=20.0199; x1(20,2)=3.5670;
x1(21,1)=21.2740; x1(21,2)=4.7658;
x1(22,1)=23.6375; x1(22,2)=3.3211;
x1(23,1)=23.8603; x1(23,2)=6.1293;
x1(24,1)=25.7806; x1(24,2)=1.8003;
x1(25,1)=26.4698; x1(25,2)=4.3295;
x1(26,1)=27.3746; x1(26,2)=3.1499;
x1(27,1)=27.6922; x1(27,2)=6.1123;
x1(28,1)=28.3321; x1(28,2)=3.6388;
x1(29,1)=29.3112; x1(29,2)=5.5035;
x1(30,1)=30.3822; x1(30,2)=2.5172;
x1(31,1)=31.8449; x1(31,2)=4.1858;
x1(32,1)=33.7120; x1(32,2)=5.0515;
x1(33,1)=33.9805; x1(33,2)=4.8947;
x1(34,1)=35.6319; x1(34,2)=5.7023;
x1(35,1)=35.9215; x1(35,2)=6.1456;
x1(36,1)=36.9147; x1(36,2)=3.8067;
x1(37,1)=37.9014; x1(37,2)=7.9138;
x1(38,1)=38.8244; x1(38,2)=7.3828;
x1(39,1)=40.8032; x1(39,2)=7.7581;
x1(40,1)=40.0112; x1(40,2)=8.0748;
x1(41,1)=41.5948; x1(41,2)=7.5525;
x1(42,1)=42.0983; x1(42,2)=5.4144;
x1(43,1)=44.3864; x1(43,2)=5.9879;
x1(44,1)=45.3002; x1(44,2)=7.9712;
x1(45,1)=46.9660; x1(45,2)=7.7468;
x1(46,1)=47.1053; x1(46,2)=5.5875;
x1(47,1)=47.8001; x1(47,2)=5.9673;
x1(48,1)=48.3976; x1(48,2)=7.1165;
x1(49,1)=50.2504; x1(49,2)=8.0479;
x1(50,1)=51.4667; x1(50,2)=8.6202;
x1(51,1)=49.7518; x1(51,2)=11.0474;
x1(52,1)=48.0198; x1(52,2)=9.7412;
x1(53,1)=47.8397; x1(53,2)=8.6673;
x1(54,1)=47.5073; x1(54,2)=9.6810;
x1(55,1)=46.5877; x1(55,2)=10.5484;
x1(56,1)=45.8399; x1(56,2)=8.6472;
x1(57,1)=44.6894; x1(57,2)=12.2699;
x1(58,1)=42.7355; x1(58,2)=13.1906;
x1(59,1)=42.2416; x1(59,2)=11.6802;
x1(60,1)=41.4626; x1(60,2)=9.1437;
x1(61,1)=39.3878; x1(61,2)=13.3631;
x1(62,1)=39.8096; x1(62,2)=12.6606;
x1(63,1)=38.1384; x1(63,2)=13.4300;
x1(64,1)=37.2636; x1(64,2)=10.7010;
x1(65,1)=35.4688; x1(65,2)=12.6869;
x1(66,1)=35.0976; x1(66,2)=12.7679;
x1(67,1)=34.8632; x1(67,2)=12.0533;
x1(68,1)=32.6704; x1(68,2)=15.7258;
x1(69,1)=32.3111; x1(69,2)=16.0957;
x1(70,1)=30.7838; x1(70,2)=14.5081;
x1(71,1)=30.2546; x1(71,2)=17.3737;
x1(72,1)=29.3982; x1(72,2)=13.6487;
x1(73,1)=27.7944; x1(73,2)=17.5663;
x1(74,1)=26.8273; x1(74,2)=17.3489;
x1(75,1)=26.3104; x1(75,2)=15.9892;
x1(76,1)=25.6752; x1(76,2)=17.1196;
x1(77,1)=23.7432; x1(77,2)=19.0045;
x1(78,1)=22.8505; x1(78,2)=17.6571;
x1(79,1)=22.1893; x1(79,2)=15.8862;
x1(80,1)=21.1315; x1(80,2)=16.5870;
x1(81,1)=20.4331; x1(81,2)=15.9183;
x1(82,1)=19.0226; x1(82,2)=17.5691;
x1(83,1)=18.5528; x1(83,2)=17.2806;
x1(84,1)=16.9787; x1(84,2)=17.6517;
x1(85,1)=15.3718; x1(85,2)=18.4702;
x1(86,1)=15.4013; x1(86,2)=15.8341;
x1(87,1)=14.9654; x1(87,2)=17.0939;
x1(88,1)=13.6133; x1(88,2)=18.5902;
x1(89,1)=12.4071; x1(89,2)=16.4305;
x1(90,1)=10.9699; x1(90,2)=18.6493;
x1(91,1)=9.2292; x1(91,2)=16.7441;
x1(92,1)=9.3297; x1(92,2)=18.4027;
x1(93,1)=7.7307; x1(93,2)=17.9292;
x1(94,1)=6.2801; x1(94,2)=17.6374;
x1(95,1)=6.1335; x1(95,2)=17.9167;
x1(96,1)=5.6460; x1(96,2)=19.7987;
x1(97,1)=4.3479; x1(97,2)=16.6548;
x1(98,1)=3.9989; x1(98,2)=16.7955;
x1(99,1)=2.9233; x1(99,2)=16.1468;
x1(100,1)=0.1177; x1(100,2)=16.4696;

x2(1,1)=18.0917; x2(1,2)=10.7906;
x2(2,1)=20.8946; x2(2,2)=7.9302;
x2(3,1)=27.0622; x2(3,2)=11.5962;
x2(4,1)=5.5730; x2(4,2)=9.4899;
x2(5,1)=26.7574; x2(5,2)=11.8636;
x2(6,1)=16.7292; x2(6,2)=9.3432;
x2(7,1)=19.0151; x2(7,2)=12.4156;
x2(8,1)=24.3078; x2(8,2)=11.8160;
x2(9,1)=22.4947; x2(9,2)=10.3850;
x2(10,1)=9.3145; x2(10,2)=9.4613;
x2(11,1)=9.9780; x2(11,2)=10.4605;
x2(12,1)=22.4415; x2(12,2)=9.6565;
x2(13,1)=13.5368; x2(13,2)=9.8577;
x2(14,1)=9.2123; x2(14,2)=11.2597;
x2(15,1)=16.8452; x2(15,2)=8.5662;
x2(16,1)=16.6143; x2(16,2)=8.5577;
x2(17,1)=12.0322; x2(17,2)=9.9863;
x2(18,1)=12.3410; x2(18,2)=8.6917;
x2(19,1)=20.7440; x2(19,2)=7.3164;
x2(20,1)=7.5386; x2(20,2)=11.5666;
x2(21,1)=26.8886; x2(21,2)=9.5218;
x2(22,1)=22.9919; x2(22,2)=7.1799;
x2(23,1)=17.3493; x2(23,2)=9.2897;
x2(24,1)=18.8619; x2(24,2)=9.7411;
x2(25,1)=13.5521; x2(25,2)=5.7984;
x2(26,1)=12.7381; x2(26,2)=7.5564;
x2(27,1)=21.2411; x2(27,2)=6.7318;
x2(28,1)=24.4092; x2(28,2)=11.9952;
x2(29,1)=26.6712; x2(29,2)=9.7442;
x2(30,1)=18.2293; x2(30,2)=12.0030;
x2(31,1)=22.6769; x2(31,2)=11.0067;
x2(32,1)=30.7391; x2(32,2)=10.8611;
x2(33,1)=32.5980; x2(33,2)=8.7771;
x2(34,1)=16.7562; x2(34,2)=10.5129;
x2(35,1)=32.4282; x2(35,2)=7.6007;
x2(36,1)=18.0425; x2(36,2)=8.6968;
x2(37,1)=14.7803; x2(37,2)=8.8055;
x2(38,1)=22.3809; x2(38,2)=10.3572;
x2(39,1)=18.6982; x2(39,2)=6.7692;
x2(40,1)=25.9816; x2(40,2)=7.5022;
x2(41,1)=22.9529; x2(41,2)=10.3560;
x2(42,1)=9.6995; x2(42,2)=12.6448;
x2(43,1)=0.8253; x2(43,2)=10.6597;
x2(44,1)=22.2435; x2(44,2)=9.2030;
x2(45,1)=12.9460; x2(45,2)=9.9126;
x2(46,1)=24.4483; x2(46,2)=10.1399;
x2(47,1)=28.4938; x2(47,2)=13.5242;
x2(48,1)=13.1255; x2(48,2)=9.8689;
x2(49,1)=25.0474; x2(49,2)=11.6899;
x2(50,1)=19.9509; x2(50,2)=9.8567;
x2(51,1)=15.4784; x2(51,2)=8.5583;
x2(52,1)=28.4445; x2(52,2)=10.5570;
x2(53,1)=15.9001; x2(53,2)=11.8933;
x2(54,1)=26.3668; x2(54,2)=7.0044;
x2(55,1)=28.5033; x2(55,2)=8.0366;
x2(56,1)=6.4663; x2(56,2)=9.6549;
x2(57,1)=36.6973; x2(57,2)=10.8341;
x2(58,1)=27.1367; x2(58,2)=8.3365;
x2(59,1)=25.3004; x2(59,2)=8.8306;
x2(60,1)=14.3970; x2(60,2)=11.1212;
x2(61,1)=17.4541; x2(61,2)=7.5968;
x2(62,1)=10.7689; x2(62,2)=11.8858;
x2(63,1)=11.3941; x2(63,2)=11.5540;
x2(64,1)=13.6303; x2(64,2)=8.8437;
x2(65,1)=22.5345; x2(65,2)=11.1880;
x2(66,1)=30.0558; x2(66,2)=12.3294;
x2(67,1)=27.0878; x2(67,2)=10.5662;
x2(68,1)=16.0525; x2(68,2)=11.5472;
x2(69,1)=5.9346; x2(69,2)=10.2316;
x2(70,1)=20.4220; x2(70,2)=10.0298;
x2(71,1)=14.5875; x2(71,2)=9.8690;
x2(72,1)=8.3235; x2(72,2)=8.2102;
x2(73,1)=21.6882; x2(73,2)=8.6548;
x2(74,1)=22.4873; x2(74,2)=9.9445;
x2(75,1)=24.1396; x2(75,2)=11.7790;
x2(76,1)=17.4024; x2(76,2)=8.9218;
x2(77,1)=16.4952; x2(77,2)=12.6580;
x2(78,1)=17.7652; x2(78,2)=8.5352;
x2(79,1)=17.9541; x2(79,2)=11.1611;
x2(80,1)=20.3055; x2(80,2)=7.6421;
x2(81,1)=29.1058; x2(81,2)=8.4386;
x2(82,1)=19.7172; x2(82,2)=9.1464;
x2(83,1)=22.9040; x2(83,2)=10.4004;
x2(84,1)=31.4804; x2(84,2)=13.3684;
x2(85,1)=16.9647; x2(85,2)=10.1980;
x2(86,1)=23.3807; x2(86,2)=9.2596;
x2(87,1)=20.7638; x2(87,2)=10.9202;
x2(88,1)=13.9053; x2(88,2)=7.8416;
x2(89,1)=3.7968; x2(89,2)=9.8266;
x2(90,1)=4.7264; x2(90,2)=10.8025;
x2(91,1)=16.9223; x2(91,2)=9.4675;
x2(92,1)=15.3344; x2(92,2)=9.6976;
x2(93,1)=16.5509; x2(93,2)=10.3232;
x2(94,1)=10.5063; x2(94,2)=10.7580;
x2(95,1)=20.3627; x2(95,2)=13.0198;
x2(96,1)=20.2478; x2(96,2)=13.5945;
x2(97,1)=14.6817; x2(97,2)=11.2545;
x2(98,1)=23.5466; x2(98,2)=7.5405;
x2(99,1)=9.1412; x2(99,2)=10.6535;
x2(100,1)=12.6591; x2(100,2)=8.9793;
x2(101,1)=17.4900; x2(101,2)=8.1205;
x2(102,1)=11.2094; x2(102,2)=11.2549;
x2(103,1)=26.3995; x2(103,2)=10.8712;
x2(104,1)=27.9677; x2(104,2)=9.6512;
x2(105,1)=20.4156; x2(105,2)=9.3194;
x2(106,1)=10.5738; x2(106,2)=8.4045;
x2(107,1)=22.9527; x2(107,2)=6.6876;
x2(108,1)=3.6603; x2(108,2)=7.0692;
x2(109,1)=15.7903; x2(109,2)=7.8872;
x2(110,1)=38.2151; x2(110,2)=9.2523;

%选出训练集与测试集
train1 = x1(1,:);
for i=3:2:100
    train1 = [train1;x1(i,:)];
end
test1 = x1(2,:);
for i=4:2:100
    test1 = [test1;x1(i,:)];
end

train2 = x2(1,:);
for i=3:2:110
    train2 = [train2;x2(i,:)];
end
test2 = x2(2,:);
for i=4:2:110
    test2 = [test2;x2(i,:)];
end

%构造完整的训练集、测试集和目标输出
p = [train1; train2];
t = [ones(50,1);-ones(55,1)];
test = [test1;test2];

%多项式核函数
%svm_struct = svmtrain(p,t,'KERNEL_FUNCTION','polynomial','POLYORDER',5,'showplot',true);
%高斯核函数
%svm_struct = svmtrain(p,t,'KERNEL_FUNCTION','rbf','showplot',true);
%双曲正切核函数
svm_struct = svmtrain(p,t,'KERNEL_FUNCTION','mlp','MLP_PARAMS',[0.1,-1],'showplot',true);

classes = svmclassify(svm_struct, test,'showplot',true);hold on;

error_num = 0;
for i=1:50
    if (classes(i) < 0)
        error_num = error_num+1;
        plot(test(i,1),test(i,2),'k*');hold on;
    end
end
for i=51:105
    if (classes(i) > 0)
        error_num = error_num+1;
        plot(test(i,1),test(i,2),'k*');hold on;
    end
end

error_num


