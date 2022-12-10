
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, eigen, eigen3-cmake-module, rmf-traffic, rmf-utils }:
buildRosPackage {
  pname = "ros-rolling-rmf-battery";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_battery-release/archive/release/rolling/rmf_battery/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "a226153acd4ffa0d35868eb2d393f664c9fcf183958832eec240ac8184218ff5";
  };

  buildType = "cmake";
  buildInputs = [ eigen eigen3-cmake-module ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ rmf-traffic rmf-utils ];
  nativeBuildInputs = [ eigen3-cmake-module ];

  meta = {
    description = ''Package for modelling battery life of robots'';
    license = with lib.licenses; [ asl20 ];
  };
}
