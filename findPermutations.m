function [ exclusiveDatabase ] = findPermutations(numOfBoxes,value,max,preExistingNum)
%Enter value and pre-exisiting numbers, will return a database containing
%only potential permutations:

%Initialise Variables
database = makeDatabase(numOfBoxes,max);
valueSpecificDatabase = zeros(0,numOfBoxes);
exclusiveDatabase = zeros(0,numOfBoxes);

%Get value specific Database
for i = 1:size(database,1)
    if value == sum(database(i,:))
        valueSpecificDatabase(size(valueSpecificDatabase,1)+1,:) = database(i,:);
    end
end

%Consideres the condition of no pre-existing numbers
if (size(preExistingNum)==0)
    exclusiveDatabase = valueSpecificDatabase;
    return
end

%Finds Permutations that hold all the pre-existing numbers
for j = 1:size(valueSpecificDatabase,1)
    exclusiveDatabase(size(exclusiveDatabase,1)+1,:) = valueSpecificDatabase(j,:);
    for k = 1:length(preExistingNum)
        %Initially add permutation to exclusive database
        if (find(valueSpecificDatabase(j,:) == preExistingNum(k)))
        else
            %If it turns out that one of the numbers does not exist in the
            %permutation then the permutation is removed from the exclusive
            %database
            exclusiveDatabase = exclusiveDatabase(1:(size(exclusiveDatabase,1)-1),:);
            break;
        end
    end
end

end

