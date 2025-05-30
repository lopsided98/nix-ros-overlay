
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, eigen3-cmake-module, rmf-traffic, rmf-utils }:
buildRosPackage {
  pname = "ros-kilted-rmf-battery";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_battery-release/archive/release/kilted/rmf_battery/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "28454ee2c7607b32ba10c7d3b07d3f1f756cd9affd6b51301ceafd81f935427d";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen eigen3-cmake-module ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ rmf-traffic rmf-utils ];
  nativeBuildInputs = [ cmake eigen3-cmake-module ];

  meta = {
    description = "Package for modelling battery life of robots";
    license = with lib.licenses; [ asl20 ];
  };
}
