%Print Introduction
fprintf('INTRODUCTION\n');
fprintf('My name is Alexis Lucattini and this is my analysis of the game Kakuro: \n');
fprintf('Here is a brief description of the game:\n');
fprintf('Cited from Wikipedia.org:\n');
fprintf('Kakuro or Kakkuro is a kind of logic puzzle that is often referred\n');
fprintf('to as a mathematical transliteration of the crossword. Kakuro puzzles \n');
fprintf('are regular features in many math-and-logic puzzle publications in the \n');
fprintf('United States. In 1966 Canadian Jacob E. Funk,an employee of Dell Magazines \n');
fprintf('came up with the original English name Cross Sums and other names such as \n');
fprintf('Cross Addition have also been used, but the Japanese name Kakuro, abbreviation \n');
fprintf('of Japanese kasan kurosu, seems to have gained general acceptance and the \n');
fprintf('puzzles appear to be titled this way now in most publications. The popularity \n');
fprintf('of Kakuro in Japan is immense, second only to Sudoku among Nikoli''s\n');
fprintf('famed logic-puzzle offerings.\n\n');

%Print Description of Different Functions and Tools
fprintf('BRIEF DESCRIPTION OF FUNCTIONS AND TOOLS\n');
fprintf('There are three functions that exist here. The first is makeDatabase. \n');
fprintf('makeDatabase is required for findPermutations as well as 3d grapher.\n');
fprintf('makeDatabase creates a database of all potential permutations for a\n');
fprintf('certain number of boxes.\n')
fprintf('findPermuations is the second function which gets a database and finds\n');
fprintf('finds all permutations for a particular size. findPermutations has a\n');
fprintf('further use in that you can input a set of numbers that may already exist\n');
fprintf('in that Kakuro line and finds only those permuations that hold those\n');
fprintf('pre-existing numbers.\n');
fprintf('The last function graphs all the permutations of all the values of all\n');
fprintf('the lengths.\n\n');

%Print how to use each function
fprintf('HOW TO USE EACH FUNCTION\n');
fprintf('1. makeDatabase has two inputs. The number of boxes in the kakuro line\n');
fprintf('As well as the maximum value one box can have. This is universally nine but\n');
fprintf('you have the freedom to change this and experiment for yourself.\n');
fprintf('Note: Things get exponentially slower the higher you go with this\n');
fprintf('For example:')
fprintf('Database = makeDatabase(2,9) results in\n');
Database = makeDatabase(2,9);
disp('Database =');
disp(Database);
fprintf('\n')
fprintf('2. findPermutations has four inputs. number of boxes, the value (that is, \n');
fprintf('the sum of the boxes in that line), maximum value one box can have and finally\n');
fprintf('A one-dimensional array containing any pre-existing numbers that may already\n');
fprintf('exist in the kakuro line\n')
fprintf('If no values exist in the kakuro line please enter "[]" for the fourth variable.\n');
fprintf('For example:')
fprintf('Say I wish to find all the permutations that exist for the value 15 with 3 boxes\n');
fprintf('A = findPermutations(3,15,9,[])\n')
disp('A =');
A = findPermutations(3,15,9,[]);
disp(A);
fprintf('Now say I have filled one of the boxes on that line with a 4.\n')
fprintf('I wish to eliminate all permutations that do not contain a 4.\n')
fprintf('I can simply go:\n');
fprintf('B = findPermutations(3,15,9,[4])\n')
disp('B =');
B = findPermutations(3,15,9,[4]);
disp(B);
fprintf('3. Kakuro3D Grapher has only one input. Max. To see the default set this to 9.\n');



