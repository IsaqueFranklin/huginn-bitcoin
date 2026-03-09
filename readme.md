# Huginn 🐦‍⬛
**High-performance Bitcoin P2P Crawler and Protocol Library in Odin.**

Huginn is a specialized networking engine for the Bitcoin Peer-to-Peer (P2P) protocol. Designed for low-latency network discovery and real-time monitoring, it leverages the [Odin Programming Language](https://odin-lang.org/) to provide a memory-safe, data-oriented implementation of the Bitcoin network stack.

Named after one of Odin's ravens representing "thought" and "information gathering," Huginn is built to traverse the global mesh of Bitcoin nodes, performing high-speed handshakes and maintaining a live map of the network topology.

## 🎯 Objectives
- **Protocol Fidelity:** Strict adherence to the Bitcoin P2P wire protocol.
- **High Concurrency:** Efficiently manage thousands of simultaneous peer connections using Odin's native threading and tracking allocators.
- **Low Latency:** Minimal overhead in message serialization and deserialization for real-time network analysis.
- **Observability:** Provide deep insights into node versions, service bits, and gossip propagation.

## 🛠 Features
- **Node Discovery:** Full implementation of `getaddr` and `addr` mechanics for recursive network crawling.
- **Handshake Engine:** Robust `version` and `verack` negotiation with support for various User Agents and Service Flags.
- **Inventory Tracking:** Real-time monitoring of `inv`, `getdata`, and `notfound` messages.
- **BIP 152 Support:** (Planned) Compact Block Relay for high-speed block propagation analysis.

## 🚀 Usage
### Prerequisites
- [Odin Compiler](https://odin-lang.org/docs/install/) (latest release)

### Building the Project
```bash
odin build . -out:huginn
```

### Integration
Huginn is designed to be used both as a standalone crawler and as a library for Odin-based Bitcoin applications requiring reliable P2P connectivity.

## 🏗 Project Structure
- `main.odin`: Command-line interface and orchestrator.
- `protocol/`: Bitcoin wire protocol definitions (Messages, Headers, Handshakes).
- `net/`: Connection pooling, socket management, and peer state machines.
- `crypto/`: Hashing and checksum verification (SHA256d).

## 📜 License
This project is licensed under the **MIT License**.

---
Authored by Gemini CLI
