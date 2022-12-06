// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;


interface IERC20 {
	event Transfer(address indexed _sender, address indexed _recipient, uint256 _amount);
	event Approval(address indexed _owner, address indexed _spender, uint256 _amount);

	function totalSupply() external view returns (uint256);
	function balanceOf(address _of) external view returns (uint256);
	function transfer(address _recipient, uint256 _amount) external returns (bool);
	function transferFrom(address _sender, address _recipient, uint256 _amount) external returns (bool);
	function allowance(address _owner, address _spender) external view returns (uint256);
	function approve(address _spender, uint256 _amount) external returns (bool);
}
