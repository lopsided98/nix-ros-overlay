
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, libphidget22 }:
buildRosPackage {
  pname = "ros-lyrical-phidgets-api";
  version = "2.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/lyrical/phidgets_api/2.4.0-3.tar.gz";
    name = "2.4.0-3.tar.gz";
    sha256 = "6d3c7f650f081c1c1aee858d269fff6d56d5ac9b8f45a0c281235a58e60327e7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ libphidget22 ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "A C++ Wrapper for the Phidgets C API";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
