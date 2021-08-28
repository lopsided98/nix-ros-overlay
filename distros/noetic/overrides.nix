# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  eigenpy = rosSuper.eigenpy.overrideAttrs ({
    patches ? [], cmakeFlags ? [], ...
  }: {
    # Allow hardcoded Python path to be overridden
    patches = patches ++ [ (self.fetchpatch {
      url = "https://github.com/ipab-slmc/eigenpy_catkin-release/commit/5cb1b98b598670be41b2e9eefed58da7335ea93d.patch";
      sha256 = "1bliaamiajbw36s8jqs5ksj96w0cm26gy1dirr6i7vhk2grksxfx";
    }) ];
    cmakeFlags = cmakeFlags ++ [ "-DPYTHON_EXECUTABLE=${rosSelf.python.interpreter}" ];
  });

  gazebo = self.gazebo_11;

  libphidget22 = patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.6.20200417.tar.gz";
    sha256 = "17xfc07bgllqr808jm779z98gwz01iik9skw2hcwpgg4j7kdxn5d";
  };

  pcl-conversions = rosSuper.pcl-conversions.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix build with PCL >=1.12
      (self.fetchpatch {
        url = "https://github.com/ros-perception/perception_pcl/commit/6900f7cf650e6c0df2aef45e0011833905b0ba9e.patch";
        sha256 = "1s011hrk656a8aziwa1klk20bwyhpvqzh0qcaqv25nnxc946km5a";
        stripLen = 1;
      })
    ];
  });

  pcl-ros = rosSuper.pcl-ros.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix build with PCL >=1.12
      (self.fetchpatch {
        url = "https://github.com/ros-perception/perception_pcl/commit/25a073a3509e068734ba0edf1e991d1c01c04e68.patch";
        sha256 = "0ylh7zcbs16q830bfs91mmzzdx7w1zxjr14n0l34i73swvhfikqi";
        stripLen = 1;
      })
    ];
  });

  pybind11-catkin = patchVendorUrl rosSuper.pybind11-catkin {
    url = "https://github.com/pybind/pybind11/archive/v2.5.0.zip";
    sha256 = "080mss10aadal8sk3bib2dr2ygx6hmxn2g92qsq42v3zhchz2n8q";
  };

  rosfmt = patchVendorUrl rosSuper.rosfmt {
    url = "https://github.com/fmtlib/fmt/releases/download/7.1.2/fmt-7.1.2.zip";
    sha256 = "19qfd19mvzg4awqbh5x10m8riyyy0dbpadpidp3mrs81gjmnhsad";
  };
}
