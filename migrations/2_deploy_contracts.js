var Buxcoin = artifacts.require('Buxcoin');
var Faucet = artifacts.require('Faucet');
var owner = web3.eth.getAccounts().then(
    function(accounts) {
        return accounts[0];
    }
);

module.exports = function(deployer) {
    deployer.deploy(Buxcoin).then(
        function() {
            return deployer.deploy(Faucet, Buxcoin.address, owner);
        }
    );
}