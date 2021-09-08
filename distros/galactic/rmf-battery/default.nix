
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, eigen, rmf-cmake-uncrustify, rmf-traffic, rmf-utils }:
buildRosPackage {
  pname = "ros-galactic-rmf-battery";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_battery-release/archive/release/galactic/rmf_battery/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "0ff6497fc75b9ca946780f0396c6b36be04c4568bc3052d67db2a6717ba439de";
  };

  buildType = "cmake";
  checkInputs = [ ament-cmake-catch2 rmf-cmake-uncrustify ];
  propagatedBuildInputs = [ eigen rmf-traffic rmf-utils ];

  meta = {
    description = ''Package for modelling battery life of robots'';
    license = with lib.licenses; [ asl20 ];
  };
}
