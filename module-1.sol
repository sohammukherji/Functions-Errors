// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BookDiscount {
    address public owner;
    mapping(address => uint256) public bookPrices;
    mapping(address => uint256) public bookQuantities;
    mapping(address => uint256) public modificationCount;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function setBook(address _book, uint256 _price, uint256 _quantity) public onlyOwner {
    require(_price > 10, "Price must be greater than 10");
    assert(modificationCount[_book] < 2);

    bookPrices[_book] = _price;
    bookQuantities[_book] = _quantity;
    modificationCount[_book]++;
}

function purchaseBook(address payable _buyer, uint256 _quantity) public payable {
    // Validate that the quantity is even
    if (_quantity % 2 != 0) {
        revert("Only even quantities of books can be purchased");
    }

    // Validate that there are enough books in stock
    if (bookQuantities[_buyer] < _quantity) {
        revert("Not enough books in stock");
    }

    // Deduct the purchased quantity from the available stock
    bookQuantities[_buyer] -= _quantity;

    // You can perform additional actions or emit events as needed
}
}
