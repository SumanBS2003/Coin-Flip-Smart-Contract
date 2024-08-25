require("@nomiclabs/hardhat-ethers");

module.exports = {
  solidity: "0.8.0",
  networks: {
    local: {
      url: "HTTP://127.0.0.1:7545",
      account: ['${0xA3865a792dEC21C42811b347a0dfCd4213AB92F1}'],
    },
  },
};
