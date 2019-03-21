
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libusb1, catkin, libphidget21, libusb }:
buildRosPackage {
  pname = "ros-kinetic-phidgets-api";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/phidgets_api/0.7.7-0.tar.gz;
    sha256 = "8f674446deca318cd65f5126ed81d14091c0bba65ab87a5712f26a3044e5b33d";
  };

  propagatedBuildInputs = [ libphidget21 libusb ];
  nativeBuildInputs = [ libusb1 catkin libphidget21 ];

  meta = {
    description = ''A C++ Wrapper for the Phidgets C API'';
    #license = lib.licenses.BSD;
  };
}
