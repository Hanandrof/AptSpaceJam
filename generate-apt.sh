mkdir -p ~/example/apt-repo/pool/main/
cp ~/example/spacejam_0.0.1-1_amd64.deb ~/example/apt-repo/pool/main/.

mkdir -p ~/example/apt-repo/dists/stable/main/binary-amd64
cd ~/example/apt-repo
dpkg-scanpackages --arch amd64 pool/ > dists/stable/main/binary-amd64/Packages
cat dists/stable/main/binary-amd64/Packages | gzip -9 > dists/stable/main/binary-amd64/Packages.gz
cd ~/example/apt-repo/dists/stable
~/example/generate-release.sh > Release
