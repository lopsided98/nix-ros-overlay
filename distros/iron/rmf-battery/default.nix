
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, eigen3-cmake-module, rmf-traffic, rmf-utils }:
buildRosPackage {
  pname = "ros-iron-rmf-battery";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_battery-release/archive/release/iron/rmf_battery/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "2c7a64f13fcb5432ca51e07d93c139d3cdd50acf85a5b14cec2da03b71b04657";
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
