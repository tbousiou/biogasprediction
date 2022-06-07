function result = predict(net, x1,t1,x2)
    % Multistep ahead NARX prediction with unseen inputs
    % net the neural network object in open form
    % x1, t1 inputs and targets before prediction
    % x2 inputs for prediction
    
    % prepare neural network data
    [x,xi,ai,~] = preparets(net,x1,{},t1);
    
    % open loop simulation with known values to get final state
    [~,xf,af] = net(x,xi,ai);
    
    % get closed loop network
    [netc,xi,ai] = closeloop(net,xf,af);
    
    % closes loop simulation to make the prediction
    result = netc(x2,xi,ai);

end