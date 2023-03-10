
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, libphidget22 }:
buildRosPackage {
  pname = "ros-humble-phidgets-api";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/humble/phidgets_api/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "1dc6911a781f7df4506a387cdcfad985ec6a5113919b5737fbd9465affa6989e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ libphidget22 ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''A C++ Wrapper for the Phidgets C API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
