nextid=13;
Time_data=[];
Vel_data=[];
LZH_data=[];
LLH_data=[];
data=testing_out;
%left=[]
codes=[1,5,8,2];

for j=1:4
left=[];
for i=1:length(codes)
code=codes(i);
data_initial=[];
data_initial=data(data(:,nextid)==code,:);
if ~isempty(data_initial)==1
[nextid,left,Time_data,Vel_data,LZH_data,LLH_data] = seg_data (data_initial,nextid,code,left,Time_data,Vel_data,LZH_data,LLH_data);
end


end
data=left;
nextid=2;

end