pragma solidity ^0.8.13;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract Buxcoin is ERC20 {
    
    string constant _name = 'Buxcoin';
    string constant _symbol = 'BXC';
    uint constant _initial_supply = 2100000000;
    uint8 constant _decimals = 2;

    constructor() ERC20(_name, _symbol) {
        _mint(msg.sender, _initial_supply);
    }

    function decimals() public view virtual override returns (uint8) {
        return _decimals;
    }
}