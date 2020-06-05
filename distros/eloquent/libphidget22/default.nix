
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb, libusb1 }:
buildRosPackage {
  pname = "ros-eloquent-libphidget22";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/eloquent/libphidget22/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "f6d4e1bdc3a4952506a399afec09b6e51ae0b2abebfb27d707f1e4ff7147b9e8";
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
