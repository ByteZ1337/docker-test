cd rust-test

cargo build --target x86_64-pc-windows-gnu --release
cargo build --target x86_64-unknown-linux-gnu --release

mkdir /app/bin
cp ./target/x86_64-pc-windows-gnu/release/docker_test.dll /app/bin/docker_test.dll
cp ./target/x86_64-unknown-linux-gnu/release/libdocker_test.so /app/bin/libdocker_test.so

echo "----------------------------------------"
echo "Target:"
echo "----------------------------------------"
ls -la ./target/
echo "----------------------------------------"
ls -la ./target/x86_64-pc-windows-gnu/release/
echo "----------------------------------------"
ls -la ./target/x86_64-unknown-linux-gnu/release/

echo "----------------------------------------"
echo "App:"
echo "----------------------------------------"
ls -la /app/bin