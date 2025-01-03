
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, lanelet2-core, lanelet2-io, lanelet2-maps, lanelet2-projection, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-noetic-lanelet2-matching";
  version = "1.2.2-r2";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2_matching/1.2.2-2.tar.gz";
    name = "1.2.2-2.tar.gz";
    sha256 = "9f2ced80b57cfb6d2dca71109cb3e9f9034233cdf88d2d2260b2fb723dee8535";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest lanelet2-io lanelet2-maps lanelet2-projection ];
  propagatedBuildInputs = [ lanelet2-core lanelet2-traffic-rules mrt-cmake-modules ];
  nativeBuildInputs = [ catkin mrt-cmake-modules ];

  meta = {
    description = "Library to match objects to lanelets";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
