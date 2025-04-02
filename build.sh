echo building multiple apps.wasm from Rust...
rm Cargo.lock
rm -rf target
cargo clean

rm -f apps/evm-pvp/src/bindings.rs

cargo component build --target wasm32-unknown-unknown --release
base64 -w 0 target/wasm32-unknown-unknown/release/evm_pvp.wasm > ./evm_pvp.b64

echo done