# Vending Machine

From [guyroyse/vending-machine-kata](https://github.com/guyroyse/vending-machine-kata)

In this exercise you will build the brains of a vending machine. It will accept money, make change, maintain inventory, and dispense products. All the things that you might expect a vending machine to accomplish.

The point of this kata to to provide an larger than trivial exercise that can be used to practice TDD. A significant portion of the effort will be in determining what tests should be written and, more importantly, written next.

## Features
### Accept Coins

As a vendor
I want a vending machine that accepts coins
So that I can collect money from the customer

The vending machine will accept valid coins (nickels, dimes, and quarters) and reject invalid ones (pennies). When a valid coin is inserted the amount of the coin will be added to the current amount and the display will be updated. When there are no coins inserted, the machine displays INSERT COIN. Rejected coins are placed in the coin return.

NOTE: The temptation here will be to create Coin objects that know their value. However, this is not how a real vending machine works. Instead, it identifies coins by their weight and size and then assigned a value to what was inserted. You will need to do something similar. This can be simulated using strings, constants, enums, symbols, or something of that nature.