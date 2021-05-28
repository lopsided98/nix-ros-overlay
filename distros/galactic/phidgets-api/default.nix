
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, libphidget22 }:
buildRosPackage {
  pname = "ros-galactic-phidgets-api";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/galactic/phidgets_api/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "0ac7122fa0d3d8cdc16b21c3dd63493ab73516b8aa8c61b487585c06e8cfe7c8";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ libphidget22 ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''A C++ Wrapper for the Phidgets C API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
