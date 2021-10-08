pragma solidity >=0.6 <0.9.0;

import "./Ownable.sol";

contract SendEther is Ownable {
  function getBalance() external view returns(uint256) {
    return msg.sender.balance;
  }

  function Trans(address _target) public payable {
    require(msg.sender.balance >= msg.value);
    address payable tgt = payable(_target);
    tgt.transfer(msg.value);
  }
}
