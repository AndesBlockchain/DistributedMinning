// contracts/MyContract.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract DistributedMining is Ownable  {
    
    mapping(bytes32=>uint) public records;

    function addRecord(bytes32 _record) onlyOwner public {
        require(records[_record]==0,"Registro ya existente");
        records[_record]=block.timestamp;
    }

}
