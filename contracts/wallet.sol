//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Wallet {
    event Sent(address from, address to, uint256);

    function send(address to) public payable {
        require(msg.value > 0, "please input a value");
        require(msg.value >= (msg.sender).balance, "Insufficient Balance");
        emit Sent(msg.sender, to, msg.value);
        payable(to).transfer(msg.value);
    }

    function balance() public view returns (uint256) {
        return msg.sender.balance;
    }
function createAccount() public returns(address){}
function ImportAccount() public {}
}
