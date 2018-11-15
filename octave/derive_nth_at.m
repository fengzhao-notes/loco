## Copyright (C) 2018 gold holk
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
## @deftypefn {Function File} {@var{dfdx} =} derive_nth_at (@var{f}, @var{n}, @var{argument})
## @deftypefnx {Function File} {@var{dfdx} =} derive_nth_at (@var{f}, @var{n}, @var{argument}, @var{dx})
##   compute the derive at function nth argument.
##   @var{argument} is vector contain argument for function @var{f} .
##   return a slope of f for nth argument .
##   default interval is 0.005 .
## @end deftypefn

## Author: gold holk <gholk@dt13>
## Created: 2018-10-15

function dfdx = derive_nth_at (f, n, argument, dx = 0.005)

  argument_after = argument;
  argument_after(n) += dx;
  f_after = apply_vector(f, argument_after);

  argument_before = argument;
  argument_before(n) -= dx;
  f_before = apply_vector(f, argument_before);

  dfdx = (f_after - f_before) / (dx * 2);
end
