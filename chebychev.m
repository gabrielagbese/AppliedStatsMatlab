n = 10^7;
%replace weights with top half of table
Weights = [37,38,39,40,41,42,43];
%replace probs with bottom half
probs = [.01 .05 .15 .58 .15 .05 .01];
%relace a:b with the bounds in the question
x = datasample(37:43,n,'Weights',probs);
%run numeroust times till you get a neat reccurring answer
exact=length(x(x>37 & x<43))/n;

