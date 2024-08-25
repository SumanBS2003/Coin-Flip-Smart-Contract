pragma solidity ^0.8.0;

contract CoinFlip {
    address public owner;

    event FlipResult(address indexed player, uint256 amount, bool won);

    constructor() {
        owner = msg.sender;
    }

    function flip(bool _side) public payable {
        require(msg.value > 0, "Bet must be greater than 0");
        
        bool flipResult = (block.timestamp % 2) == (_side ? 1 : 0);

        if (flipResult) {
            payable(msg.sender).transfer(msg.value * 2);
        }

        emit FlipResult(msg.sender, msg.value, flipResult);
    }

    receive() external payable {}
}
