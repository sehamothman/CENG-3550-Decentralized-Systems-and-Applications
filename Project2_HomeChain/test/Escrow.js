//In test we can write JavaScript code to test the behavior of a smart contract if it works well!

const { expect } = require('chai');
const { ethers } = require('hardhat');

const tokens = (n) => {
    return ethers.utils.parseUnits(n.toString(), 'ether')
}

// ALL TEST CASES FOR ESCROW SMART CONTRACT
describe('Escrow', () => {
    it('saves the address', async () => {
        // Deploy Real Estate
        const RealEstate = await ethers.getContractFactory('RealEstate')
        realEstate = await RealEstate.deploy()

        console.log("Real Estate Contract Address:", realEstate.address)

    })
    
    })