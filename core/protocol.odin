//Struct ands consts definitions

package huginn_core

// A fixed header of 24 bytes, every Bitcoin header needs to have 24bytes
MessageHeader :: struct #packed {
  magic: u32, // Mainnet: 0xD9B4BEF9
  command: [12]u8, // Version, verack string, etc
  length: u32, //Size of what comes after the header
  checksum: u32, //SHA256(SHA256(payload))[:4]
}

// Initial version message (simplified)
VersionMessage :: struct #packed {
  version: i32, // Ex: 70015
  services: u64, // Usually 0 for simple monitor
  timestamp: i64,
  addr_recv: NetAddr,
  addr_from: NetAddr,
  nonce: u64,
  user_agent: VarString, //Odin is going to need a helper for VarInt here
  start_height: i32,
  relay: bool,
}

NetAddr :: struct #packed {
  services: u64,
  ip: [16]u8, //IPv6 or IPv4 mapped to IPv6
  port: u16, //Big endian here.
}
