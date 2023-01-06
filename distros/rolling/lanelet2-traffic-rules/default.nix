
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-rolling-lanelet2-traffic-rules";
  version = "1.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/rolling/lanelet2_traffic_rules/1.1.1-3.tar.gz";
    name = "1.1.1-3.tar.gz";
    sha256 = "5d655613cb78d42844f302c336e3421f2b2d9a6c71bc0f687905ee1e9f24c47f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ lanelet2-core mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = ''Package for interpreting traffic rules in a lanelet map'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
