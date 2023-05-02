cd rust-test

cargo build --target x86_64-pc-windows-gnu --release
cargo build --target x86_64-unknown-linux-gnu --release

mkdirs ../bin
cp ./target/x86_64-pc-windows-gnu/release/docker_test.dll ../bin/docker_test.dll
cp ./target/x86_64-unknown-linux-gnu/release/libdocker_test.so ../bin/libdocker_test.so