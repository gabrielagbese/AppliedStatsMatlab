function eloszfv = ecdf2(data)
data=sort(data);

min_x=2*min(data)-mean(data); max_x=2*max(data)-mean(data);

axis([min_x max_x -0.1 1.1]) 

hold on

plot(min_x:0.1:min(data), zeros(length(min_x:0.1:min(data))),'b')

for i=1:(length(data)-1)

    plot((data(i):0.1:data(i+1)), i/length(data)*ones(length(data(i):0.1:data(i+1))),'b')

end

plot(max(data):0.1:max_x, ones(length(max_x:-0.1:max(data))),'b')

end