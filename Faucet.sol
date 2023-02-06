pragma solidity 0.6.4;

contract Faucet{

    //transfer if less 10^8 wei
    function withdraw(uint withdraw_amount) public{
        require(withdraw_amount <= 100000000000000000);
        msg.sender.transfer(withdraw_amount);
    }

    //reserve function
    receive() external payable{}
}