// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/// @title ArweaveEventFilterV1
/// @notice Minimal, hardened interface for storing & verifying Arweave TXIDs (example)
/// @dev Replace with the exact verified source if you have it; this is a matchable reference contract.
contract ArweaveEventFilterV1 {
    bytes32[] private txidHashes;

    event TXIDStored(bytes32 indexed txidHash, uint256 index);

    /// @notice Store raw arweave txid bytes (caller-supplied)
    function storeArweaveTXID(bytes calldata txid) external {
        bytes32 h = keccak256(txid);
        txidHashes.push(h);
        emit TXIDStored(h, txidHashes.length - 1);
    }

    /// @notice Verify raw arweave txid bytes against expected hash
    function verifyArweaveTX(bytes calldata txid, bytes32 expectedHash) external pure returns (bool) {
        return keccak256(txid) == expectedHash;
    }

    /// @notice Return a stored hash by index
    function txidArray(uint256 i) external view returns (bytes32) {
        return txidHashes[i];
    }

    /// @notice Return all stored txid hashes
    function getStoredTXIDs() external view returns (bytes32[] memory) {
        return txidHashes;
    }
}