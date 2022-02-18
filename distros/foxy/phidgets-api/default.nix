
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, libphidget22 }:
buildRosPackage {
  pname = "ros-foxy-phidgets-api";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/foxy/phidgets_api/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "ef33bfcb1e4046fce79ef924fe748cbf307a7e55a127fc0f98370305147b6660";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ libphidget22 ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''A C++ Wrapper for the Phidgets C API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
