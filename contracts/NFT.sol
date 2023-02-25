// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;
 
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
 
contract NFT is ERC1155 {
    uint256  constant CHARIZARD = 0;
    uint256  constant GYRADOS = 1;
 
    constructor() public ERC1155("https://ipfs.io/ipfs/Qmdn7phRNpq5d1fVrXMgPXGfHaKJYzMB6wX1M1QrxKu8ax/{id}.json") {
        _mint(msg.sender, CHARIZARD, 50, "");
        _mint(msg.sender, GYRADOS, 100, "");
    }
 
    function uri(uint256 _tokenId) override public pure returns (string memory) {
        return string(abi.encodePacked("https://ipfs.io/ipfs/Qmdn7phRNpq5d1fVrXMgPXGfHaKJYzMB6wX1M1QrxKu8ax/",Strings.toString(_tokenId),".json")
        );
    }
}