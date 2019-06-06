//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package a9.simulations;

import a9.Computer;


network Network2
{
    @display("bgb=273,227");
    submodules:
        C[6]: Computer;
    connections:
        C[0].gate++ <--> C[5].gate++;
        C[1].gate++ <--> C[5].gate++;
        C[2].gate++ <--> C[5].gate++;
        C[3].gate++ <--> C[5].gate++;
        C[4].gate++ <--> C[5].gate++;

}
