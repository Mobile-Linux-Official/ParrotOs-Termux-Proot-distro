pkg update
pkg install wget nano proot-distro

echo "DISTRO_NAME="ParrotOs"



TARBALL_URL['aarch64']="https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Rootfs/Parrot/arm64/parrot-rootfs-arm64.tar.xz"

TARBALL_SHA256['aarch64']="d563b790ef367d9857d928de8fb967116561d4050cc00d0ffd58390be32641c6"

TARBALL_URL['arm']="https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Rootfs/Parrot/armhf/parrot-rootfs-armhf.tar.xz"

TARBALL_SHA256['arm']="ad5352df583e315869b12e5eb4fa3205b0d7a4284216f6d6d3e4d9a87209b12c"



distro_setup() {

        # Don't update gvfs-daemons and udisks2

        run_proot_cmd apt-mark hold gvfs-daemons udisks2

}" >> $PREFIX/etc/proot-distro/parrot.sh

proot-distro install parrot
proot-distro login parrot
