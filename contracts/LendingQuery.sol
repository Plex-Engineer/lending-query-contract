// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract LendingQuery {
    // get ctokens balance converted to underlying
    function getCtokenBalance(address cToken, address account) public returns (uint256) {
        return ICToken(cToken).balanceOfUnderlying(account);
    }

    // get underlying balance
    function getUnderlyingBalance(address cToken, address account) public view returns (uint256) {
        return IERC20(ICToken(cToken).underlying()).balanceOf(account);
    }

    // get total balance
    function getTotalBalance(address cToken, address account) public returns (uint256) {
        return getCtokenBalance(cToken, account) + getUnderlyingBalance(cToken, account);
    }
}

interface ICToken {
    function balanceOf(address owner) external view returns (uint256 balance);
    function balanceOfUnderlying(address owner) external returns (uint256 balance);
    function underlying() external view returns (address);
}

interface IERC20 {
    function balanceOf(address owner) external view returns (uint256 balance);
}
