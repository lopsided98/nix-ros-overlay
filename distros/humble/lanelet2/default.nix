
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, lanelet2-core, lanelet2-examples, lanelet2-io, lanelet2-maps, lanelet2-matching, lanelet2-projection, lanelet2-python, lanelet2-routing, lanelet2-traffic-rules, lanelet2-validation, ros-environment }:
buildRosPackage {
  pname = "ros-humble-lanelet2";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/humble/lanelet2/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "536fff47f096a9d9a0707221bc09f99514052ccd5ff8579f0a3908e2f40ed730";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ros-environment ];
  propagatedBuildInputs = [ lanelet2-core lanelet2-examples lanelet2-io lanelet2-maps lanelet2-matching lanelet2-projection lanelet2-python lanelet2-routing lanelet2-traffic-rules lanelet2-validation ];
  nativeBuildInputs = [ ament-cmake-core ros-environment ];

  meta = {
    description = ''Meta-package for lanelet2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
