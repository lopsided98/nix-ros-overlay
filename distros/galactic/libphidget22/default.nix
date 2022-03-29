
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1 }:
buildRosPackage {
  pname = "ros-galactic-libphidget22";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/galactic/libphidget22/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "46dc58a7b8e145a772b6c26892bdd082775c3b2d62515eca39264845d329d813";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ libusb1 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package wraps the libphidget22 to use it as a ROS dependency'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
