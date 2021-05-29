# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  cv-bridge = patchBoostPython rosSuper.cv-bridge;

  gazebo = self.gazebo_11;

  libphidget22 = patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.6.20200417.tar.gz";
    sha256 = "17xfc07bgllqr808jm779z98gwz01iik9skw2hcwpgg4j7kdxn5d";
  };

  pybind11-catkin = patchVendorUrl rosSuper.pybind11-catkin {
    url = "https://github.com/pybind/pybind11/archive/v2.5.0.zip";
    sha256 = "080mss10aadal8sk3bib2dr2ygx6hmxn2g92qsq42v3zhchz2n8q";
  };

  rosfmt = patchVendorUrl rosSuper.rosfmt {
    url = "https://github.com/fmtlib/fmt/releases/download/7.1.2/fmt-7.1.2.zip";
    sha256 = "19qfd19mvzg4awqbh5x10m8riyyy0dbpadpidp3mrs81gjmnhsad";
  };
}
