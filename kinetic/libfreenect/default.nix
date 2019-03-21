
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb1, xorg, freeglut, cmake }:
buildRosPackage {
  pname = "ros-kinetic-libfreenect";
  version = "0.5.1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/libfreenect-ros-release/archive/release/kinetic/libfreenect/0.5.1-0.tar.gz;
    sha256 = "c1523f04c9e92d69fe6bf05189a87b74f2b1db907aee16c7fe38d87b7e45457a";
  };

  propagatedBuildInputs = [ libusb1 xorg.libXi freeglut catkin xorg.libXmu ];
  nativeBuildInputs = [ libusb1 xorg.libXi freeglut cmake xorg.libXmu ];

  meta = {
    description = ''Open source libraries that will enable the Kinect to be used with Windows, Linux, and Mac.'';
    #license = lib.licenses.Apache 2.0;
  };
}
