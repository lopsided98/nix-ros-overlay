
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, eigen, rmf-cmake-uncrustify, rmf-traffic, rmf-utils }:
buildRosPackage {
  pname = "ros-galactic-rmf-battery";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_battery-release/archive/release/galactic/rmf_battery/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "f35acb0a973133f680546c728f0c2ae25092d9780ad10a5b14216d85a7b3773e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-catch2 rmf-cmake-uncrustify ];
  propagatedBuildInputs = [ eigen rmf-traffic rmf-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package for modelling battery life of robots'';
    license = with lib.licenses; [ asl20 ];
  };
}
