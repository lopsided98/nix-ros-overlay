
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libphidget22, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-dashing-phidgets-api";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/dashing/phidgets_api/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "45f5a5fac73054a7a1aa180ac1e03009d158064a8748c16650045d22982f795f";
  };

  buildType = "ament_cmake";
  buildInputs = [ libphidget22 ];
  propagatedBuildInputs = [ libphidget22 ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''A C++ Wrapper for the Phidgets C API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
