
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, libphidget22 }:
buildRosPackage {
  pname = "ros-rolling-phidgets-api";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/rolling/phidgets_api/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "1b5e4239e40d4828b481285d23711eb6033147eb823d3fa921cd495e5b7cd047";
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
