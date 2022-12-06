// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;


interface ISwapFund {
	event BeginCycle(uint8 indexed _threadId, uint256 indexed _cycleNumber);
	event BeginPeriods(uint8 indexed _threadId, uint8 _periodNumber);
	event EndPeriod(uint8 indexed _tokenId, uint8 indexed _threadId, uint8 _periodNumber);
	event Swap(uint8 indexed _tokenId, uint8 indexed _threadId, uint256 _amount, uint256 _pairedTokenAmount);

	function getCycleNumber(uint8 _threadId) external view returns (uint256);
	function getPeriodNumber(uint8 _threadId) external view returns (uint8);
	function isPeriodEnded(uint8 _tokenId, uint8 _threadId) external view returns (bool);
	function getPeriodSwappableOut(uint8 _tokenId, uint8 _threadId) external view returns (uint256);
	function getPeriodSwappedIn(uint8 _tokenId, uint8 _threadId) external view returns (uint256);
	function getPeriod(uint8 _threadId) external view returns (
						uint8 _number,
						bool[2] memory _ended,
						uint256[2] memory _swappedIn,
						uint256[2] memory _swappableOut);
	function getCycleNumbers() external view returns (uint256[8] memory);
	function getPeriodNumbers() external view returns (uint8[8] memory _periodNumbers);
	function swapReceivedWithPaired(address _of, uint256 _amount) external returns (bool);
}
