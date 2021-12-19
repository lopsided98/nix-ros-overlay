
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1 }:
buildRosPackage {
  pname = "ros-galactic-libphidget22";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/galactic/libphidget22/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "8f8ee29321775752a5053b28770844bb68c7ce2820652ab3bae4e549a8d0ace7";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ libusb1 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package wraps the libphidget22 to use it as a ROS dependency'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
