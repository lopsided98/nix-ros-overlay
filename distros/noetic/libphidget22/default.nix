
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb, libusb1 }:
buildRosPackage {
  pname = "ros-noetic-libphidget22";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/libphidget22/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "cb3c5d6c110815d1352bb290d85763a34f9e304d1a7e37299eea27e75ebadf8c";
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
