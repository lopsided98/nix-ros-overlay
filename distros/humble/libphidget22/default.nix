
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1 }:
buildRosPackage {
  pname = "ros-humble-libphidget22";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/humble/libphidget22/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "b33c2ed88ee8728586da5943d4be8573d8625a92085d8c1c72d3ff24cba2dbf2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ libusb1 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package wraps the libphidget22 to use it as a ROS dependency'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
