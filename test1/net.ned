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
// 
// TODO documentation
//
simple Node
{
    gates:
        input in;
        output out;

}

//
// TODO documentation
//
network Network1
{
    @display("bgb=385,261");
    submodules:
        Node2: Node {
            @display("p=331,95");
        }
        Node1: Node {
            @display("p=72,95");
        }
    connections:
        Node2.out --> Node1.in;
        Node1.out --> Node2.in;
}

