
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libusb1, ament-cmake, libusb }:
buildRosPackage {
  pname = "ros-dashing-libphidget22";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/dashing/libphidget22/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "24f2c220738f1468bad2072dfcaab8471fc5fd9ca12d3fb8180ad294335ddb37";
  };

  buildType = "ament_cmake";
  buildInputs = [ libusb1 ];
  propagatedBuildInputs = [ libusb ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package wraps the libphidget22 to use it as a ROS dependency'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
