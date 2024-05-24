
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, eigen3-cmake-module, rmf-traffic, rmf-utils }:
buildRosPackage {
  pname = "ros-jazzy-rmf-battery";
  version = "0.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_battery-release/archive/release/jazzy/rmf_battery/0.3.0-3.tar.gz";
    name = "0.3.0-3.tar.gz";
    sha256 = "ad79651b38977f437aa4dd51da42ecb6dbb6f12cb4db45b992f785140fdd40ff";
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
