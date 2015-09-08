# Battleships

This is a program on the Battleships game.

Classes

Player
 
Responsibilities:

* can win or lose
* can win if all ships are sunk
* player can place ships
* can report hit positions
* can report miss positions
* can tell us when a ship has been hit

Ship

Responsibilities:

* has a position when created
* different sizes
* can be hit or miss
* will record number of hits
* will not be hit when it is missed
* can sink
* place in a direction

Board

Responsibilities:

* takes ships
* reprots missed hit when no ship at position
* can receive a hit on a ship
* can report if all ships are sunk
* does not allow ships to cross-over (occupied or not)
