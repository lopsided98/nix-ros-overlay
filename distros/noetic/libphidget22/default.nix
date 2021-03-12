
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb, libusb1 }:
buildRosPackage {
  pname = "ros-noetic-libphidget22";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/libphidget22/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "13448a827747b404a950c49df14ba9adec5d38b60d62dde4e3add13f337d213a";
  };

  buildType = "catkin";
  buildInputs = [ libusb1 ];
  propagatedBuildInputs = [ libusb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libphidget22 to use it as a ROS dependency'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
