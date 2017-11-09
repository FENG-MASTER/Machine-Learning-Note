% 这个函数的功能就是根据输入的thete值,返回对应代价函数的结果 和 代价函数在每个特征分量上的导数值 %
function [jVal,gradient]=costFunction(thete)

jVal=(thete(1)-5)^2+(thete(2)-5)^2; 

gradient=zeros(2,1);
gradient(1)=2*(thete(1)-5);
gradient(2)=2*(thete(2)-5);


