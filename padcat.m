% ## Copyright (C) 2017 anish_4s67ibh
% ## 
% ## This program is free software; you can redistribute it and/or modify it
% ## under the terms of the GNU General Public License as published by
% ## the Free Software Foundation; either version 3 of the License, or
% ## (at your option) any later version.
% ## 
% ## This program is distributed in the hope that it will be useful,
% ## but WITHOUT ANY WARRANTY; without even the implied warranty of
% ## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% ## GNU General Public License for more details.
% ## 
% ## You should have received a copy of the GNU General Public License
% ## along with this program.  If not, see <http://www.gnu.org/licenses/>.
% 
% ## -*- texinfo -*- 
% ## @deftypefn {Function File} {@var{retval} =} padcat (@var{input1}, @var{input2})
% ##
% ## @seealso{}
% ## @end deftypefn
% 
% ## Author: anish_4s67ibh <anish_4s67ibh@ANISH_PC>
% ## Created: 2017-04-06

function [C] = padcat (A, B)

size_A=size(A);
size_B=size(B);
if isempty(A) || isempty(B)
C=vertcat(A,B);
elseif size_A(2)>size_B(2)
B=horzcat(B,NaN(size_B(1),size_A(2)-size_B(2)));
C=vertcat(A,B);
elseif size_B(2)>size_A(2)
A=horzcat(A,NaN(size_A(1),size_B(2)-size_A(2)));
C=vertcat(A,B);
else
C=vertcat(A,B);

end


end
