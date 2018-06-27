pragma solidity ^0.4.23;

import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC721/ERC721Token.sol";
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract LineToken is ERC721Token, Ownable {
    uint256 public currSpot = 1;
    
    constructor (string _name, string _symbol) public ERC721Token(_name, _symbol)
    {
    }
    
    function makeSpot(address _to) onlyOwner payable public {
        _mint(_to, currSpot);
        currSpot = currSpot + 1;
    }
}
