pragma solidity ^0.5.1;

contract Challenge5{
    address payable public PayReciver;
    uint public PayTime;
    
    constructor(address payable _PayReciver , uint _PayTime ) public payable
    {
        require(_PayTime > block.timestamp);
        PayReciver = _PayReciver;
        PayTime = _PayTime;
    }
    
    function PayRelease () public
    {
        require(block.timestamp >= PayTime);
        PayReciver.transfer(address(this).balance);
    }
}
