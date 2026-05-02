
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, file, libusb1 }:
buildRosPackage {
  pname = "ros-rolling-libphidget22";
  version = "2.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/rolling/libphidget22/2.4.0-2.tar.gz";
    name = "2.4.0-2.tar.gz";
    sha256 = "9e873f841a07d98bfc8e01908017aef474f4f8504ae8596361d777a31ea04e92";
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
