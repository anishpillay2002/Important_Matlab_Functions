## Copyright (C) 2017 anish_4s67ibh
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} seg_data (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: anish_4s67ibh <anish_4s67ibh@ANISH_PC>
## Created: 2017-04-06

function [nextid,left,Time_data,Vel_data,LZH_data] = seg_data (data,nextid,code,left,Time_data,Vel_data,LZH_data)
remain=[];
slice=[];
sz_loc=nextid+1;
strt_loc=nextid+2;
unique_sz=unique(data,(:,sz_loc));
for i=1:length(unique_sz)
sz=unique_sz(i);
end_loc=strt_loc+sz-1;
slice=data(data(:,sz_loc)==sz,[1,strt_loc:end_loc]);
remain=data(data(:,sz_loc)==sz,[1,end_loc+1:end]);
left=padcat(left,remain);
nextid=2;
if code==1
Time_data=padcat(Time_data,slice);
elseif code==8
Vel_data=padcat(Vel_data,slice);
elseif code==5
LZH_data=padcat(LZH_Data,slice);
end

endfunction
