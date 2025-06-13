
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, file, libusb1 }:
buildRosPackage {
  pname = "ros-kilted-libphidget22";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/kilted/libphidget22/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "b6ff84f77d272ee2d9a309cca6a52b3940dbd4e69cf35b3c20e50992e0dfdc8b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake file ];
  propagatedBuildInputs = [ libusb1 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package wraps the libphidget22 to use it as a ROS dependency";
    license = with lib.licenses; [ "LGPL" ];
  };
}
