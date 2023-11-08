require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
	solidity: "0.8.19",
	networks: {
		mainnet: {
			url: "https://mainnode.plexnode.org:8545",
			accounts: ["43b0e6c365bf12a967e63aa4007dcea76b53d695b6beca6dceceeded5a3f1227"],
		},
	},
};
