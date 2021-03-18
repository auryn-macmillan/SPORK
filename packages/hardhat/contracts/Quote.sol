pragma solidity ^0.6.2;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/token/ERC1155/ERC1155Burnable.sol";

contract Quote is Ownable, ERC1155, ERC1155Burnable {

  mapping (uint256 => bool) public minted;

  event TokenMinted(string quote, uint256 id);

  constructor() public ERC1155("https://game.example/api/item/{id}.json") {
  }

  // allows anyone to mint a new quote
  function mint(string memory quote)
    public
  {
    uint256 id = uint256(keccak256(bytes(quote)));
    require(!minted[id], "Already minted");
    _mint(msg.sender, id, 1, "");
    minted[id] = true;
    emit TokenMinted(quote, id);
  }

  function getId(string memory quote)
    public
    returns(uint256 id)
  {
    uint256 id = uint256(keccak256(bytes(quote)));
    return (id);
  }
}
