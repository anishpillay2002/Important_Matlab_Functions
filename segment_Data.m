seg_data (data,nextid,code,left,Time_data,Vel_data,LZH_data)


nextid=13;
Time_data=[];
Vel_data=[];
LZH_data=[];
left=[];
Time_start=D200Array(D200Array(:,nextid)==1,:);
Vel_start=D200Array(D200Array(:,nextid)==8,:);
LZH_start=D200Array(D200Array(:,nextid)==5,:);


[nextid,left,Time_data,Vel_data,LZH_data] = seg_data (data,nextid,code,left,Time_data,Vel_data,LZH_data)
