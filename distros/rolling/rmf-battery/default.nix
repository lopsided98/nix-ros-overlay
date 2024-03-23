
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, eigen3-cmake-module, rmf-traffic, rmf-utils }:
buildRosPackage {
  pname = "ros-rolling-rmf-battery";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_battery-release/archive/release/rolling/rmf_battery/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "ff03ed071357f1cdbad2855f835a566dca2f4ea40ebe9580d42dc232a0d44848";
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
