/// https://eips.ethereum.org/EIPS/eip-20
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/** @title Yoken, an ERC20 Token contract
 * @author @y0ng0p3
 * @notice Explain to an end user what this does
 * @dev Explain to a developer any extra detailsowner; 
*/
contract Yoken is ERC20 {
    address _owner;

    constructor(uint256 _initialAmount, string memory _tokenName, uint8 _decimalUnits, string  memory _tokenSymbol) ERC20("Yoken", "YTK") {
        _owner = _msgSender();                    // Set the symbol for display purposes
    }

    /** @notice creates `_amount` tokens and assigns them to `_account`, increasing the total supply.
     * @param _account The address of the recipient
     * @param _amount The amount of token to be created 
    */
    function mint(address _account, uint256 _amount) external {
        require(_msgSender() == _owner, "Yoken: you can't call this function");
        _mint(_account, _amount);
    }
}
