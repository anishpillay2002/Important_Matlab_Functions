nextid=2;
Time_data=[];
Vel_data=[];
LZH_data=[];

data=back_data;

codes=[1,5,8];

for j=1:4
left=[];
for i=1:length(codes)
code=codes(i);
data_initial=[];
data_initial=data(data(:,nextid)==code,:);
if ~isempty(data_initial)==1
[nextid,left,Time_data,Vel_data,LZH_data] = seg_data (data_initial,nextid,code,left,Time_data,Vel_data,LZH_data)
end


end
data=left;

end