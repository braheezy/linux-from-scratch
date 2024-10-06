# Linux from Scratch
It's a rite of passage so here go.

This repo is mostly my notes on creating the environment I did LFS in.

Ultimately, I failed to reboot into the LFS image :(
- GRUB doesn't seem capable of seeing NVME devices, which is what I chose to install the LFS content to
- Forcing QEMU to load the disk using IDE controller bricks the system even worse
- `kexec` to load and boot LFS directly hangs

## Setup
I'm doing this in a QEMU VM instead of mucking up my host. Get a QEMU disk:

    http -d https://download.fedoraproject.org/pub/fedora/linux/releases/40/Cloud/x86_64/images/Fedora-Cloud-Base-Generic.x86_64-40-1.14.qcow2

Create an ISO out of the cloud init files:

    mkisofs -o cloud-init.iso -V cidata -r -J user-data meta-data

See `aliases` for starting and running the VM.

    . aliases

## LFS
Run `/data/prereqs.sh`, then `/data/prep.sh`, then follow the LFS guide.

There's `close-chroot.sh` and `login-chroot.sh` helpers too.
