
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libusb1, catkin, libphidget21, libusb }:
buildRosPackage {
  pname = "ros-lunar-phidgets-api";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/lunar/phidgets_api/0.7.7-0.tar.gz;
    sha256 = "9db11ec1b0234b11c6041d7de4593c7d8976c6c59a352ede28992b61317a0904";
  };

  buildInputs = [ libusb1 libphidget21 ];
  propagatedBuildInputs = [ libphidget21 libusb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A C++ Wrapper for the Phidgets C API'';
    #license = lib.licenses.BSD;
  };
}
