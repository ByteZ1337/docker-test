cargo install cross --git https://github.com/cross-rs/cross

cd rust-test

cross build --target x86_64-pc-windows-gnu --release
cross build --target x86_64-unknown-linux-gnu --release
cross build --target aarch64-unknown-linux-gnu --release

mkdir /app/bin
cp ./target/x86_64-pc-windows-gnu/release/docker_test.dll /app/bin/docker_test_x86_64-pc-windows-gnu.dll
cp ./target/x86_64-unknown-linux-gnu/release/libdocker_test.so /app/bin/libdocker_test_x86_64-unknown-linux-gnu.so
cp ./target/aarch64-unknown-linux-gnu/release/libdocker_test.so /app/bin/libdocker_test_aarch64-unknown-linux-gnu.so

echo "----------------------------------------"
echo "Target:"
echo "----------------------------------------"
ls -la ./target/