
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, lanelet2-core, lanelet2-examples, lanelet2-io, lanelet2-maps, lanelet2-matching, lanelet2-projection, lanelet2-python, lanelet2-routing, lanelet2-traffic-rules, lanelet2-validation, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-lanelet2";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/rolling/lanelet2/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "479d678db911bdb02574acd1689731c453082ea3e4d5e8b3dc4850f74a2e69a3";
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
