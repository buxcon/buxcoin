pragma solidity ^0.8.13;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract Faucet {

    ERC20 public Buxcoin;
    address public BXCOwner;

    constructor(address _Buxcoin, address _BXCOwner) {
        Buxcoin = ERC20(_Buxcoin);
        BXCOwner = _BXCOwner;
    }

    function withdraw(uint withdraw_amount) public {
        require(withdraw_amount <= 1000);

        Buxcoin.transferFrom(BXCOwner, msg.sender, withdraw_amount);
    }

    fallback() external payable {
        revert();
    }
}