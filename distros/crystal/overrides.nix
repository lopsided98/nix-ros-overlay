# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  rviz-ogre-vendor = patchVendorUrl rosSuper.rviz-ogre-vendor {
    url = "https://github.com/OGRECave/ogre/archive/v1.10.11.zip";
    sha256 = "0906sk8k2yz47mbcymm5s06knhhywgffvf2lzfnc8rbqhn2sc51d";
  };
}
