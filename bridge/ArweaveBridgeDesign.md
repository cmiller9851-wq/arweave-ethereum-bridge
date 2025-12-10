# Arweave ↔ Ethereum Bridge — Design Notes

## Objective
Provide a censorship-resistant, auditable linking mechanism between Arweave content and Ethereum state.

## Components
- **On-chain**: ArweaveEventFilterV1 — stores keccak256(txid) hashes, emits events.
- **Off-chain indexer**: subscribes to events, fetches Arweave content, builds search indices.
- **Client**: scripts + small web UI to submit TXIDs & verify content.

## Security & Assumptions
- No admin key required for the on-chain contract.
- All verification derives from keccak256(txid) comparisons.
- Off-chain indexer must validate Arweave transactions using Arweave gateway APIs.

## Next steps
1. Replace example contract with exact verified source file (if available).  
2. Publish ABI in `bridge/abi/`.  
3. Add an off-chain indexer (Node/Go) that reads contract events and indexes Arweave responses.