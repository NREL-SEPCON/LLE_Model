function F=extraction(x,KEQext,KEQs,Ka,TOPOi,HAi,VR,pH,KEQs1,vf)

F(1)=((x(1)-KEQext(1)*(x(17)*x(18)/Ka(1)*x(11))))*1E6;
F(2)=((x(2)-KEQext(2)*(x(17)*x(19)/Ka(2)*x(11))))*1E6;
F(3)=((x(3)-KEQext(3)*(x(17)*x(20)/Ka(3)*x(11))))*1E6;
F(4)=((x(4)-KEQext(4)*(x(17)*x(21)/Ka(4)*x(11))))*1E6;
F(5)=((x(5)-KEQext(5)*(x(17)*x(22)/Ka(5)*x(11))))*1E6;

F(6)=((x(12)-KEQs(1)*x(17)*x(18)/Ka(1)))*1E6;
F(7)=((x(13)-KEQs(2)*x(17)*x(19)/Ka(2)))*1E6;
F(8)=((x(14)-KEQs(3)*x(17)*x(20)/Ka(3)))*1E6;
F(9)=((x(15)-KEQs(4)*x(17)*x(21)/Ka(4)))*1E6;
F(10)=((x(16)-KEQs(5)*x(17)*x(22)/Ka(5)))*1E6;

F(11)=((x(6)-KEQs1(1)*x(17)*x(18)/Ka(1)))*1E6;
F(12)=((x(7)-KEQs1(2)*x(17)*x(19)/Ka(2)))*1E6;
F(13)=((x(8)-KEQs1(3)*x(17)*x(20)/Ka(3)))*1E6;
F(14)=((x(9)-KEQs1(4)*x(17)*x(21)/Ka(4)))*1E6;
F(15)=((x(10)-KEQs1(5)*x(17)*x(22)/Ka(5)))*1E6;

F(16)=((TOPOi-(KEQext(1)*(x(17)*x(18)/Ka(1)*x(11))+KEQext(2)*(x(17)*x(19)/Ka(2)*x(11))+KEQext(3)*(x(17)*x(20)/Ka(3)*x(11))+KEQext(4)*(x(17)*x(21)/Ka(4)*x(11))+KEQext(5)*(x(17)*x(22)/Ka(5)*x(11)))-x(11)))*1E6;

F(17)=((HAi(1)-(x(17)*x(18)/Ka(1)+x(18))-VR*(vf(1)*x(1)+vf(2)*x(12)+vf(3)*x(6))))*1E6;
F(18)=((HAi(2)-(x(17)*x(19)/Ka(2)+x(19))-VR*(vf(1)*x(2)+vf(2)*x(13)+vf(3)*x(7))))*1E6;
F(19)=((HAi(3)-(x(17)*x(20)/Ka(3)+x(20))-VR*(vf(1)*x(3)+vf(2)*x(14)+vf(3)*x(8))))*1E6;
F(20)=((HAi(4)-(x(17)*x(21)/Ka(4)+x(21))-VR*(vf(1)*x(4)+vf(2)*x(15)+vf(3)*x(9))))*1E6;
F(21)=((HAi(5)-(x(17)*x(22)/Ka(5)+x(22))-VR*(vf(1)*x(5)+vf(2)*x(16)+vf(3)*x(10))))*1E6;

F(22)=(10^(-pH)-x(17)-(HAi(1)/(1+10^(-pH-log10(Ka(1))))+HAi(2)/(1+10^(-pH-log10(Ka(2))))+HAi(3)/(1+10^(-pH-log10(Ka(3))))+HAi(4)/(1+10^(-pH-log10(Ka(4))))+HAi(5)/(1+10^(-pH-log10(Ka(5)))))+sum(x(18:22))-1*10^-14/10^(-pH)+x(23))*1E6;
F(23)=(1E-14-x(17)*x(23))*1E6;



end
    




