pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/SimpleStorage.sol";

contract TestSimpleStorage {
  
  function testGet() public {
    uint value = SimpleStorage(DeployedAddresses.SimpleStorage()).get();
    uint expected = 0;
    Assert.equal(value, expected, "Should get zero value");
  }

  function testSet() public {
    uint expected = 4;
    SimpleStorage(DeployedAddresses.SimpleStorage()).set(expected);
    uint value = SimpleStorage(DeployedAddresses.SimpleStorage()).get();
    Assert.equal(value, expected, "Should get four value after set");
  }
}
