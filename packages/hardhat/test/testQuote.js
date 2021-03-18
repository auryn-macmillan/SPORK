const { ethers } = require("hardhat");
const { use, expect } = require("chai");
const { solidity } = require("ethereum-waffle");

use(solidity);

describe("Quote", function () {
  let quote;
  let newQuote;
  let id;

  describe("Deploy", function () {
    it("Should deploy Quote", async function () {
      const Quote = await ethers.getContractFactory("Quote");

      quote = await Quote.deploy();
    });
  });
  describe("mint()", function () {
    it("Should mint a token", async function () {
      newQuote = "This is a quote";
      id = await quote.getId(newQuote);

      await quote.mint(newQuote);
      expect(await quote.minted[id]).to.equal(true);
    });
  });
  describe("burn()", function () {
    it("Should burn a token", async function () {

      await quote.burn('0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266', id, 1);
      expect(await quote.minted[id]).to.equal(false);
    });
  });
});
