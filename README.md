# onelogin

## oneLogin Interview take home coding challenge

Write a command line program in the language of your choice that will take operations on fractions as an input and produce a fractional result.

Legal operators shall be *, /, +, - (multiply, divide, add, subtract)
Operands and operators shall be separated by one or more spaces
Mixed numbers will be represented by whole_numerator/denominator. e.g. "3_1/4"

Improper fractions and whole numbers are also allowed as operands 


The only dependency is Swift's Foundation framework. In theory, this could run on a supported linux instance (untested).


## Requiments

Minimum system: macOS Mojave 10.14.4
Developed on: macOS Big Sur 11.3

Untested but it should run on a swift supported linux instance.

The the only requirement is Foundation.
There is no 3rd party dependencies.


## Build Instructions:

Thsi is  a swift package with no xcodeproect included. Developed with Xcode 12.5.

The project can be built via Xcode or from command line.


### Xcode

1. Open the Package.swift file in Xcode.
2. From the menu Product->Run  or ⌘R
3. Press ⇧⌘C to show the console, if it doesn't automatically show.
4. You should see *Enter your equation*
5. Enter the equation in the console.
6. See answer.


### Swift Build

1. cd into the project directory
2. Type the command: `swift run`
3. You should see *Enter your equation*
4. Enter the equation.
5. See answer.

