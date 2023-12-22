
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, eigen3-cmake-module, rmf-traffic, rmf-utils }:
buildRosPackage {
  pname = "ros-iron-rmf-battery";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_battery-release/archive/release/iron/rmf_battery/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "603f8d6e3e08cc03693762037ed26ea97029d56e76d5bc6b61086376e2f3f027";
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
