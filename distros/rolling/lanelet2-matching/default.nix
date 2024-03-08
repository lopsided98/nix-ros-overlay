
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest, lanelet2-core, lanelet2-io, lanelet2-maps, lanelet2-projection, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-rolling-lanelet2-matching";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/rolling/lanelet2_matching/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "96dfed708bf94dc41a050c59af51b4128d9548f215bda2b960fcce571aef23fe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest lanelet2-io lanelet2-maps lanelet2-projection ];
  propagatedBuildInputs = [ lanelet2-core lanelet2-traffic-rules mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = ''Library to match objects to lanelets'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
