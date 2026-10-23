
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-rolling-lanelet2-traffic-rules";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/rolling/lanelet2_traffic_rules/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "f01b5e7cee921ed508ab1e52a8944947c381aed1977f9497cd81914dfc537f42";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ lanelet2-core mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = "Package for interpreting traffic rules in a lanelet map";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
