# Contract Reference

## ArweaveEventFilterV1

- **Address (Sepolia example):** `0x8a2F3B6D8c1F3d8E8a9B8e8C9d8E8f9A0b1c2d3e`
- **Main functions**
  - `storeArweaveTXID(bytes txid)`
  - `verifyArweaveTX(bytes txid, bytes32 expectedHash) returns (bool)`
  - `txidArray(uint256 index) returns (bytes32)`
  - `getStoredTXIDs() returns (bytes32[])`

ABI is in `bridge/abi/ArweaveEventFilterV1.json`.