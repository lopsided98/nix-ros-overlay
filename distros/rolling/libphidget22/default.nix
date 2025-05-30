
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, file, libusb1 }:
buildRosPackage {
  pname = "ros-rolling-libphidget22";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/rolling/libphidget22/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "23f5723e6e8d95e3dc05baffade7d38e03cec0e5618dec04ea8fe83c5be6d53e";
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
