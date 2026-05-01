
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, file, libusb1 }:
buildRosPackage {
  pname = "ros-lyrical-libphidget22";
  version = "2.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/lyrical/libphidget22/2.4.0-3.tar.gz";
    name = "2.4.0-3.tar.gz";
    sha256 = "da6caa7971021a61cc907807b8530e77bbb24d5423a223ec32ff08b3c4c2642b";
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
