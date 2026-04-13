import { ethers } from 'ethers';

/**
 * HydraPay SDK
 * Helper class to interact with the HydraSplitter contract.
 */
export class HydraPay {
    private contract: ethers.Contract;

    constructor(address: string, abi: any[], signer: ethers.Signer) {
        this.contract = new ethers.Contract(address, abi, signer);
    }

    /**
     * Set up a waterfall split via the smart contract
     */
    async setupWaterfall(tokenAddress: string, receivers: number[]) {
        try {
            const tx = await this.contract.configureWaterfall(tokenAddress, receivers);
            await tx.wait();
            return { success: true, hash: tx.hash };
        } catch (error) {
            console.error("SDK Error:", error);
            throw error;
        }
    }
}
