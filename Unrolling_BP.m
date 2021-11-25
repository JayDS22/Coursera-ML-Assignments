 % BackPropagation (Unrolling and Roll Back of Parameters)
 % Note: Matrix Form = Convenient for Back/Forward Propagation || Vector Form = Convenient for using Advanced Optimization
% Algo. (ThetaVec, DVec)-> Considers Matrices as Long Vectors
 % Step-1: UNROLL: VECTORS(Neural Networks)
>> Theta1 = ones(10,11); 
>> Theta2 = 2*ones(10,11);
>> Theta2 = 3*ones(1,11);
Theta1 =

   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1

>> Theta2 = 2*ones(10,11)
Theta2 =

   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2

>> Theta3 = 3*ones(1,11)
Theta3 =

   3   3   3   3   3   3   3   3   3   3   3
%Unrolling it to Vectors
>> thetaVec = [Theta1(:); Theta2(:); Theta3(:)];
>>
>> %Step-2: ROLLBACK: MATRIX(Neural Networks)
>> size(thetaVec)
ans =

   231     1

>> %Matrices are converted into Single Long Vector Format - > Change it back to Matrices
>> Theta1 = reshape(thetaVec(1:110),10,11)
Theta1 =

   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
>> Theta2 = reshape(thetaVec(111:220),10,11)
Theta2 =

   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2

>> Theta3 = reshape(thetaVec(221:231),1,11)
Theta3 =

   3   3   3   3   3   3   3   3   3   3   3

>> %Converted Long Vector, back to Matrices
(i-search)`': %Practice Dry Run || Back-Propagation: Unrolling Parameters




