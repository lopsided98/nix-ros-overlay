
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1 }:
buildRosPackage {
  pname = "ros-humble-libphidget22";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/humble/libphidget22/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "c7a2796129e60c2a37d01b261162851a25141416f984cf14196fca619075e08b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ libusb1 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package wraps the libphidget22 to use it as a ROS dependency";
    license = with lib.licenses; [ "LGPL" ];
  };
}
