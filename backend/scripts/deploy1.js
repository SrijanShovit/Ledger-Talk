const hre = require('hardhat');

async function main() {
    const Forum = await hre.ethers.getContractFactory("Forum")
    const forum = await Forum.deploy();

    await forum.deployed();

    console.log("Factory deployed to:", forum.address);
}

main()
     .then(() => process.exit(0))
     .catch((error) => {
        console.log(error);
        process.exit(1);
     });
