function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

disp('gradientDescentMulti');


for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
	
	temptheta=theta;  %缓存下当前探测点 ,因为要求同步更新,所以先保存一份之前的

	mm=size(X,2);   %特征数目,3,包括了X0=1对应的o0
	
	for j=1:mm,
		%%正在计算某个特征j
		
		sum=0;
		for ii=1:m,
			sum=sum+(X(ii,:)*theta-y(ii))*X(ii,j);
		end;
		
		temptheta(j)=theta(j)-alpha*(sum)/m;
		

	end;
		
	theta=temptheta;
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);
	
	save histort.txt J_history;

end

end
