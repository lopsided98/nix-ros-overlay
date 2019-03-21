
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb }:
buildRosPackage {
  pname = "ros-kinetic-libphidget21";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/libphidget21/0.7.7-0.tar.gz;
    sha256 = "2393014148c8ed95f1ef88cb4dd22e96eede5c65d0cac698da3f4156f0441f83";
  };

  propagatedBuildInputs = [ libusb ];
  nativeBuildInputs = [ catkin libusb ];

  meta = {
    description = ''This package wraps the libphidget21 to use it as a ROS dependency'';
    #license = lib.licenses.LGPL;
  };
}
