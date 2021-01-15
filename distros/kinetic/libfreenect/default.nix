
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, freeglut, libusb1, xorg }:
buildRosPackage {
  pname = "ros-kinetic-libfreenect";
  version = "0.5.1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/libfreenect-ros-release/archive/release/kinetic/libfreenect/0.5.1-0.tar.gz";
    name = "0.5.1-0.tar.gz";
    sha256 = "c1523f04c9e92d69fe6bf05189a87b74f2b1db907aee16c7fe38d87b7e45457a";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin freeglut libusb1 xorg.libXi xorg.libXmu ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Open source libraries that will enable the Kinect to be used with Windows, Linux, and Mac.'';
    license = with lib.licenses; [ asl20 ];
  };
}
