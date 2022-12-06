const SwapFund = artifacts.require("SwapFund");
const Merger = artifacts.require("Merger");
const Splitter = artifacts.require("Splitter");
const BN = require("bn.js");


module.exports = async (deployer, network, accounts) => {
	await deployer.deploy(SwapFund,
		5,
		1000000000,
		100,
		9000000000000000,
		new BN("10000000000000000"),
		[4, 5, 6, 8, 12, 20, 40, 60]);
};
