function [ database ] = makeDatabase(numOfBoxes,max )
%Recursive function which can build Databases!
if (~exist('max'))
    max = 9;
end
if (numOfBoxes == 1)
    database = 1:9;
    database = database';
    return
end
database = zeros(0,numOfBoxes);
prevDatabase = makeDatabase(numOfBoxes-1,max);
for i = 1:size(prevDatabase,1)
    for j = (prevDatabase(i,numOfBoxes-1)+1):max
        x = size(database,1)+1;
        database(x,(1:size(prevDatabase,2))) = prevDatabase(i,:);
        database(x,numOfBoxes) = j;
    end
end     
end

