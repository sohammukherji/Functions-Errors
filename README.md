# Project Title: Functions-and-Errors---ETH-AVAX

## Description

This Solidity smart contract is designed to demonstrate basic validation and error handling techniques. It includes functions to update a stored values or numbers, while ensuring that certain conditions are met.

`Revert:` The revert statements in the code are used to halt the execution of the function and revert any changes made to the state if certain conditions are not met. For example, in the purchaseBook function, if the quantity of books to be purchased is not an even number, the function will revert with the message "Only even quantities of books can be purchased," preventing an odd quantity from being processed.


`Assert:` The assert statement is used to check for conditions that should never occur if the code is correct. In this context, it is employed to ensure that the modification count for a book is less than 2 in the setBook function. If the condition evaluates to false, it indicates a critical error in the code, and the transaction will be reverted.


`Require:` The require statements are used to validate certain conditions before allowing the execution of a function to proceed. For instance, in the setBook function, it checks whether the price of the book is greater than 10. If this condition is not met, the function will revert with the message "Price must be greater than 10," preventing the modification of book details with an invalid price. Additionally, the onlyOwner modifier utilizes a require statement to ensure that only the owner of the contract can call certain functions, enhancing access control.


## Getting Started

Solidity Compiler: Make sure you have a Solidity compiler version that is compatible with the contract (e.g., ^0.8.0).
Ethereum Development Framework: Install and set up an Ethereum development framework like Truffle, Remix, or any other of your choice

## assert(): 
The assert function, like require, is a convenience function that checks for conditions. If a condition fails, then the function execution is terminated with an error message.
assert() takes only one parameter as input. You pass a condition to assert(), and if the condition is true, then the function execution continues and the execution jumps to the next statement in the function. The assert() statement is defined as:

assert(<condition to be checked/validated>);

## revert():
Can be used to flag an error and revert the current call. You can also provide a message containing details about the error, and the message will be passed back to the caller. However, the message, like in require(), is an optional parameter. revert() causes the EVM to revert all the changes made to the state, and things return to the initial state or the state before the function call was made.

### Installing

No installation required, we can use Remix IDE for execution of contract.


## Authors
Soham Mukherjee

## License

This project is licensed under the metacrafters License.
