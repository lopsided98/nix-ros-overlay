
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1 }:
buildRosPackage {
  pname = "ros-foxy-libphidget22";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/foxy/libphidget22/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "ea4aeece6ab2abe32b65ff08ae275ce3b70c2491951c42b9d70c827347cdce29";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ libusb1 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package wraps the libphidget22 to use it as a ROS dependency'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
