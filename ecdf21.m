function elfv = ecdf21(data)

udata=unique(data);

data1=udata;

for i=1:length(udata)

data1(2,i)=sum(data==udata(i));

end

data=data1;

min_x=2*min(data(1,:))-mean(data(1,:));

max_x=2*max(data(1,:))-mean(data(1,:));

axis([min_x max_x -0.1 1.1])

hold on

plot(min_x:0.01:min(data(1,:)), zeros(length(min_x:0.01:min(data(1,:)))),'b','LineWidth',2)

for i=1:(size(data,2)-1)

 plot((data(1,i):0.01:data(1,(i+1))),sum(data(2,1:i)/sum(data(2,:)))*ones(length(data(1,i):0.01:data(1,(i+1)))),'b','LineWidth',2)

end

plot(max(data(1,:)):0.01:max_x, ones(length(max_x:-0.01:max(data(1,:)))),'b','LineWidth',2)

end