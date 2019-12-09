
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libusb1, libusb, libphidget21, catkin }:
buildRosPackage {
  pname = "ros-melodic-phidgets-api";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/phidgets_api/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "c3f33f14fcfc032dddcb02b6a7938265972b7133804823a5cae8c9d51c30a46f";
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
