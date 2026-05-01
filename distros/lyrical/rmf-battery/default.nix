
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, eigen3-cmake-module, rmf-traffic, rmf-utils }:
buildRosPackage {
  pname = "ros-lyrical-rmf-battery";
  version = "0.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_battery-release/archive/release/lyrical/rmf_battery/0.4.0-3.tar.gz";
    name = "0.4.0-3.tar.gz";
    sha256 = "553a37c19cb86c9bd06859c61db0d0f757eef9291c873137f0392d8869e76a3d";
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
