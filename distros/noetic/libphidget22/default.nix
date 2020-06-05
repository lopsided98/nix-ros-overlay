
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb, libusb1 }:
buildRosPackage {
  pname = "ros-noetic-libphidget22";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/libphidget22/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "ec2332c2e545ede5a2ade74049e4b43ae60499112f0938cdf624649086371432";
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
