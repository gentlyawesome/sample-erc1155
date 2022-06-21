const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Pax", function () {
  it("Should return value", async function () {
      const [owner] = await ethers.getSigners();

      const Pax = await ethers.getContractFactory('Pax');
      const pax = await Pax.deploy();

      const result = await pax.balanceOf(owner.address, 0);
      expect(result.toNumber()).to.equal(1)
  })
});