
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, lanelet2-core, lanelet2-examples, lanelet2-io, lanelet2-maps, lanelet2-matching, lanelet2-projection, lanelet2-python, lanelet2-routing, lanelet2-traffic-rules, lanelet2-validation, ros-environment }:
buildRosPackage {
  pname = "ros-kilted-lanelet2";
  version = "1.2.1-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/kilted/lanelet2/1.2.1-7.tar.gz";
    name = "1.2.1-7.tar.gz";
    sha256 = "5e89a39399cbe5dd60d88e480ef333a6b69dc147a2aa8d8bae0adef54a0bb316";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ros-environment ];
  propagatedBuildInputs = [ lanelet2-core lanelet2-examples lanelet2-io lanelet2-maps lanelet2-matching lanelet2-projection lanelet2-python lanelet2-routing lanelet2-traffic-rules lanelet2-validation ];
  nativeBuildInputs = [ ament-cmake-core ros-environment ];

  meta = {
    description = "Meta-package for lanelet2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
