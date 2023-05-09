import React,{useState, useEffect} from "react";
import { ReactDOM } from "react";
import { ethers } from "ethers";


function Wallet(){

//here the code is to add the polygon testnet in the wallet of the user
const networks = {
    polygon: {
        chainId: `0x${Number(80001).toString(16)}`,
        chainName: "Polygon Testnet",
        nativeCurrency: {
            name: "MATIC",
            symbol: "MATIC",
            decimals: 10
        },
        rpcUrls: ["https://rpc-mumbai.maticvigil.com/"],
        blockExplorerUrls: ["https://mumbai.polygon.com/"]
    },
};


const [address, setAddress] = useState(" ");
const [balance, setBalance] = useState(" ");


    const connectWallet = async ()=>{
        await window.ethereum.request({ method: "eth_requestAccounts" });
        const provider = new ethers.providers.Web3Provider(window.ethereum, "any");// now from here any provider (Wallets like Metamask) will be able to connect to our Dapp 

        if(provider.network !== "matic"){// if your network is not Polygon testnet then it will prompts to add the network of the "polygon Testnet"
            await window.ethereum.request ({
                method: "wallet_addEthereumChain",
                params: [
                    {
                        ...networks["polygon"]// by changing name here we can add any of the network to our Wallet
                    }
                ]
            })

            const account = provider.getSigner();// I want information of that person who is signing the transaction
        const Address = await account.getAddress();// Now I want to extract address of that Signer from that information
        setAddress(Address);// I updated the address of the signer

        const Balance =ethers.utils.formatEther( await account.getBalance());// fetch the balance of the  account and also using ether libraray to convert the "wei" into "ether"
        setBalance(Balance);//update the balance state  
        }
        
    
}

return(
    <>
    <h1 onClick={connectWallet()}> this is my Wallet:- {address==" "?<h3>Connect your wallet</h3>:<h3>{address}</h3> }</h1>
    <h1 onClick={connectWallet()}> this is my Balance:- {balance==" "?<h3>Balance not fetched</h3>:<h3>{balance}</h3>}</h1>
    </>

)

}

export default Wallet;