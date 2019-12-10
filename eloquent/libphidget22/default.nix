
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb, libusb1 }:
buildRosPackage {
  pname = "ros-eloquent-libphidget22";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/eloquent/libphidget22/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "f59ffeedfd7a92c71f2acf37d660f3be468ceca87aceaa23409fa31f3d2d67fe";
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
