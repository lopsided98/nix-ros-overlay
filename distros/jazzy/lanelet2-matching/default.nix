
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest, lanelet2-core, lanelet2-io, lanelet2-maps, lanelet2-projection, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-jazzy-lanelet2-matching";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/jazzy/lanelet2_matching/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "93d1d7d8d10b18b7dcacdcb8f5cc9e6f5e15d143396d5dfd1b5264cd651b4a1a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest lanelet2-io lanelet2-maps lanelet2-projection ];
  propagatedBuildInputs = [ lanelet2-core lanelet2-traffic-rules mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = "Library to match objects to lanelets";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
