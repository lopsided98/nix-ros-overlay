
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, libphidget22 }:
buildRosPackage {
  pname = "ros-eloquent-phidgets-api";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/eloquent/phidgets_api/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "e6565674037558aaa185c9863febbf5c2f68b58224baf8d2393f1fd8a22e9b3d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ libphidget22 ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''A C++ Wrapper for the Phidgets C API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
