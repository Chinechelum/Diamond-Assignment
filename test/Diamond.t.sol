// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Diamond.sol";
import "../src/facets/DiamondCutFacet.sol";
import "../src/facets/DiamondLoupeFacet.sol";
import "../src/facets/ERC20Token.sol";
import "../src/facets/ERC721Token.sol";
import "../src/facets/OwnershipFacet.sol";

contract DiamondTest is Test {
    Diamond public theDiamond;
    DiamondCutFacet public theDiamondCut;
    ERC20 public theERC20;

    function setUp() public {
        theDiamondCut = new DiamondCutFacet();  
       theDiamond = new Diamond(msg.sender, address(theDiamondCut));
    }

    function testERC20() public {
        theERC20 = new ERC20("My Token", "MTK");
    }

    // function testIncrement() public {
    //     theDiamond.increment();
    //     assertEq(theDiamond.number(), 1);
    // }

    // function testSetNumber(uint256 x) public {
    //     theDiamond.setNumber(x);
    //     assertEq(theDiamond.number(), x);
    // }
}
