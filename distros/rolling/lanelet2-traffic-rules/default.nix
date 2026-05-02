
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-rolling-lanelet2-traffic-rules";
  version = "1.2.1-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/rolling/lanelet2_traffic_rules/1.2.1-7.tar.gz";
    name = "1.2.1-7.tar.gz";
    sha256 = "7ac4500636093ab1145f03317a3540c3e3d579c984078cc926e4b24d2f996ddb";
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
