function [AvgAvail, MinAvail]= simulatorFunction(N,S,W,dlt,T,AP,pl)
% [AvgAvail, MinAvail]= simulatorFunction(N,AP,S,W,dlt,T,pl)
% Input parameters:
%  N -   no. of mobile nodes
%  S -   maximum absolute speed of mobile nodes (in km/h)
%  W -   radio range (in meters)
%  dlt - time slot duration (in seconds)
%  T -   no. of time slots of the simulation
%  AP -  matrix with one row per AP node and 2 columns where the
%        first column has the horizontal coordinates and the
%        second column has the vertical coordinates of the AP nodes
%  pl -  plot option: 0 - nothing;
%                     1 - nodes' movement;
%                     2 - nodes' movement and connectivity
% Output parameters:
%  AvgAvail - average availability among all mobile nodes
%  MinAvail - minimum availability among all mobile nodes

    % Initialize Mobile Node position and speed vectors:
    [pos,vel]= InitializeState(N,S);
    % Initialize statistical counters:
    counter= InitializeCounter(N);
    L= [];
    C= [];
    h= waitbar(0,'Running simulation...');
    % Simulation cycles:
    for iter= 1:T
        waitbar(iter/T,h);
        % Update Mobile Node position and speed vectors:
        [pos,vel]= UpdateState(pos,vel,dlt);
        % Compute L with the node pairs with direct wireless links:
        L= ConnectedList(pos,W,AP);
        % Compute C with the nodes with Internet Access:
        C= ConnectedNodes(L,N,AP);
        % Update statistical counters:
        counter= UpdateCounter(C,counter);
        % Simulation visualization:    
        visualize(N,AP,pos,L,C,pl)
    end
    delete(h)
    % Compute final result: 
    [AvgAvail, MinAvail]= results(T,counter);
end

function [pos,vel]= InitializeState(N,S)
    pos = [500*rand(N,1) 200*rand(N,1)];
    abs_dir= S*rand(N,1)/3.6;
    angle_dir= 2*pi*rand(N,1);
    vel= [abs_dir.*cos(angle_dir) abs_dir.*sin(angle_dir)];
end

function counter= InitializeCounter(N)
% counter - a row vector with N values to count the number of time slots
%           such that each mobile node has Internet access
% This function creates the row vector 'counter' and initializes it with zeros
% in all positions. 
end

function [pos,vel]= UpdateState(pos,vel,dlt)
    N= size(pos,1);
    pos = pos + dlt*vel;
    aux= [500*ones(N,1) 200*ones(N,1)];
    vel(pos>aux) = -vel(pos>aux);
    pos(pos>aux)= aux(pos>aux);
    aux= zeros(N,2);
    vel(pos<aux) = -vel(pos<aux);
    pos(pos<aux)= 0;
end

function counter= UpdateCounter(C,counter)
% This function increments the values of the 'counter' positions of the
% mobile nodes that have Internet access.
end

function L= ConnectedList(pos,W,AP)
% Input:
%   pos -  a matrix with N rows and 2 columns; each row identifies the (x,y)
%          coordinates of each mobile node
%   W -    radio range (in meters)
%   AP -   coordinates of Access Points (APs)
% Output:
%   L -    a matrix with 2 columns; each row identifies a pair of nodes
%          (mobile nodes and AP nodes) with a direct wireless link
%          between them
end

function C= ConnectedNodes(L,N,AP)
% Input:
%   L -  a matrix with 2 columns; each row identifies a pair of nodes
%        (mobile nodes and AP nodes) with a direct wireless link
%        between them
%   N -  no. of mobile nodes
%   AP - coordinates of Access Points (APs)
% Output:
%   C - an array with N values (one for each mobile node) that is 1 in 
%       position i if mobile node i has Internet access
%
% NOTE: To develop this function, check MATLAB function 'distances' that
%       computes shortest path distances of a graph.
%
end

function [AverageAvailability, MinimumAvailability]= results(T,counter)
% This function computes the average and the minimum availability (values
% between 0 and 1) based on array 'counter' and on the total number of
% time slots T.
end

function visualize(N,AP,pos,L,C,plotar)
    if plotar==0
        return
    end
    nAP= size(AP,1);
    plot(AP(1:nAP,1),AP(1:nAP,2),'s','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',12)
    hold on
    plot(pos(1:N,1),pos(1:N,2),'o','MarkerEdgeColor','r','MarkerFaceColor','r')
    if plotar==2
        pos=[pos;AP];
        for i=1:size(L,1)
            plot([pos(L(i,1),1) pos(L(i,2),1)],[pos(L(i,1),2) pos(L(i,2),2)],'b')
        end
        plot(pos(C,1),pos(C,2),'o','MarkerEdgeColor','b','MarkerFaceColor','b')
    end
    axis([0 500 0 200])
    grid on
    set(gca,'xtick',0:50:500)
    set(gca,'ytick',0:50:200)
    set(gcf, 'Position',  [50, 100, 600, 220])
    drawnow
    hold off
end
