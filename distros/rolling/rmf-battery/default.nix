
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, eigen3-cmake-module, rmf-traffic, rmf-utils }:
buildRosPackage {
  pname = "ros-rolling-rmf-battery";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_battery-release/archive/release/rolling/rmf_battery/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "3fc63aceff0cb9f9d62dcc93c574a11146452abb80b993529e8fcde6373b41f2";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen eigen3-cmake-module ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ rmf-traffic rmf-utils ];
  nativeBuildInputs = [ cmake eigen3-cmake-module ];

  meta = {
    description = ''Package for modelling battery life of robots'';
    license = with lib.licenses; [ asl20 ];
  };
}
