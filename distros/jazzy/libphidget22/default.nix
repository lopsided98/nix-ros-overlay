
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, file, libusb1 }:
buildRosPackage {
  pname = "ros-jazzy-libphidget22";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/jazzy/libphidget22/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "fda2184d74f99b9d46300c80a599d1302e6db146e53baa7d34de88a2f71f9746";
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
