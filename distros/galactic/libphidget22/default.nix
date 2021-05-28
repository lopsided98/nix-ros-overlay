
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb, libusb1 }:
buildRosPackage {
  pname = "ros-galactic-libphidget22";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/galactic/libphidget22/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "4cf358789470c53020d6f4130f530c49d2744f606796a8623cd18c866662d85c";
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
