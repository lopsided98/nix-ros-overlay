
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb1, xorg, freeglut, cmake }:
buildRosPackage {
  pname = "ros-lunar-libfreenect";
  version = "0.5.1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/libfreenect-ros-release/archive/release/lunar/libfreenect/0.5.1-0.tar.gz;
    sha256 = "88a7e60f6aef5f15abca4746a3c47720e3774e3394667e5e5b82500295f1c6c6";
  };

  buildInputs = [ libusb1 xorg.libXi freeglut xorg.libXmu ];
  propagatedBuildInputs = [ libusb1 xorg.libXi freeglut catkin xorg.libXmu ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Open source libraries that will enable the Kinect to be used with Windows, Linux, and Mac.'';
    #license = lib.licenses.Apache 2.0;
  };
}
