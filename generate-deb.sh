mkdir -p ~/example/spacejam_0.0.1-1_amd64/usr/bin
cp ~/example/persistence/persistence ~/example/spacejam_0.0.1-1_amd64/usr/bin/jam

mkdir -p ~/example/spacejam_0.0.1-1_amd64/DEBIAN
echo "Package: spacejam
Version: 0.0.1
Maintainer: example <example@example.com>
Architecture: amd64
Homepage: http://example.com
Description: persistence from Team Monstars" \
> ~/example/spacejam_0.0.1-1_amd64/DEBIAN/control

dpkg --build ~/example/spacejam_0.0.1-1_amd64
