function [ output_args ] = kakuro3DGrapher(max)
%kakuro3DGrapher is a visual representation of the amount of different
%permutations at each different value and each different length. As can be
%discovered by running this program, the highest possible number of
%permuations possible is 12 (given max = 9). This is achieved at 21 with 4
%boxes and 25 with 5 boxes.
%Creates the ground floor.
z = zeros(max,sum(1:max));

for i = 1:max
    for j = 1:sum(1:max)
        z(i,j) = size(findPermutations(i,j,max,[]),1);
    end
end

bar3(z);


end

