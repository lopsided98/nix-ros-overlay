
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest, lanelet2-core, lanelet2-io, lanelet2-matching, lanelet2-projection, lanelet2-python, lanelet2-routing, lanelet2-traffic-rules, mrt-cmake-modules, ros2cli }:
buildRosPackage {
  pname = "ros-kilted-lanelet2-examples";
  version = "1.2.1-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/kilted/lanelet2_examples/1.2.1-7.tar.gz";
    name = "1.2.1-7.tar.gz";
    sha256 = "123775378e3b93bad5504f7ed238df39bef2a1952e17a3abe14ce08162a9c535";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ lanelet2-core lanelet2-io lanelet2-matching lanelet2-projection lanelet2-python lanelet2-routing lanelet2-traffic-rules mrt-cmake-modules ros2cli ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = "Examples for working with Lanelet2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
