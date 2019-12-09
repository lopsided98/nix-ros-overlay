
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libusb1, libusb, libphidget21, catkin }:
buildRosPackage {
  pname = "ros-kinetic-phidgets-api";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/phidgets_api/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "d0e31229e64bcac2b1e57f5516d2be520dcf6295d9014117a03b2a8ff640b034";
  };

  buildType = "catkin";
  buildInputs = [ libusb1 libphidget21 ];
  propagatedBuildInputs = [ libusb libphidget21 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A C++ Wrapper for the Phidgets C API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
