// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Cows {
    constructor() {}
}

contract Birds {
    constructor() {}
}

contract AnimalFactory {

    Cows[] public cowsContracts;
    Birds[] public birdsContracts;

    function createAnimals() public {
        Cows cow = new Cows();
        cowsContracts.push(cow);

        Birds bird = new Birds();
        birdsContracts.push(bird);
    }
}
