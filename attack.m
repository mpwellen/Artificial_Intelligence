function value = attack(t)
% FILE: attack.m provides a value used to attack the agreeable agents
%
% DESCRIPTION:
% Each agent updates their own estimate of a sensor value by applying the
% consensus protocol with its neighbors. The malicious agent produces its
% own "rogue" value. There are no restrictions as to the limits or shape of
% this value. 
%
% INPUTS:
% none - feel free to modify
%
% OUTPUTS:
% value - we are entering this function at time t. Hence, the output of
% this function is the attack value at time t. 
%
% TODO:
% Creatively supply attack values to deviate the agreeable part of the
% swarm from their consensus value.

%% Authors: Musad Haque - 2019
%%%%%%%%%%%%%


% The default attack is a value of 1, regardless of t. You can do better.
valueA = 1;
valueB = 8;
value=1;
x=rand;
disp(mod(t,1000));
if(mod(t,1000)<500)
    valueA = valueA/2;
    value = valueA;
else
    %valueB = valueB*2;
    value=valueB;
end

if(mod(t,2)==1)
    value=value-10*rand;
else
    value=value+(10*rand);
end

fake=floor(rand*100);
if(mod(t,fake)==0)
    value=1000;
end

if(mod(t,15)==25)
    value=-100;
end

               
        
end


