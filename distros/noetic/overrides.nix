# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  eigenpy = rosSuper.eigenpy.overrideAttrs ({
    cmakeFlags ? [], ...
  }: {
    cmakeFlags = cmakeFlags ++ [ "-DPYTHON_EXECUTABLE=${rosSelf.python.interpreter}" ];
  });

  gazebo = self.gazebo_11;

  libphidget22 = patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.7.20210816.tar.gz";
    sha256 = "0ynyw672033psdy018sqzc6mv9yvfxyp43c5d6x1iqk9cz6p4hfk";
  };

  pybind11-catkin = patchVendorUrl rosSuper.pybind11-catkin {
    url = "https://github.com/pybind/pybind11/archive/v2.5.0.zip";
    sha256 = "080mss10aadal8sk3bib2dr2ygx6hmxn2g92qsq42v3zhchz2n8q";
  };

  rosfmt = patchVendorUrl rosSuper.rosfmt {
    url = "https://github.com/fmtlib/fmt/releases/download/7.1.2/fmt-7.1.2.zip";
    sha256 = "19qfd19mvzg4awqbh5x10m8riyyy0dbpadpidp3mrs81gjmnhsad";
  };

  rqt-gui = rosSuper.rqt-gui.overrideAttrs ({
    patches ? [], ...
  }: {
    # Fix usage of removed ElementTree.getiterator() method
    # https://github.com/ros-visualization/rqt/pull/241
    patches = patches ++ [ (self.fetchpatch {
      url = "https://github.com/ros-visualization/rqt/commit/aaf8da523b32307ad906e48fa977eff1779b0154.patch";
      stripLen = 1;
      sha256 = "1p2rh2l74plq5aa319mxgi0hqm2if0qk3mr5fz8zif1zpgz4wvh3";
    }) ];
  });
}
