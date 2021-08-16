const ctrl = artifacts.require("Controldata");

module.exports = function(deployer) {
  deployer.deploy(ctrl, 25,50);
};
