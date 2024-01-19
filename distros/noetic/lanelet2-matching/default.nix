
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, lanelet2-core, lanelet2-io, lanelet2-maps, lanelet2-projection, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-noetic-lanelet2-matching";
  version = "1.2.1-r2";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2_matching/1.2.1-2.tar.gz";
    name = "1.2.1-2.tar.gz";
    sha256 = "fdcdf57a6617bb115abf03657fd7d7074e42cb1d62af3b3de94756b9672eb64e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest lanelet2-io lanelet2-maps lanelet2-projection ];
  propagatedBuildInputs = [ lanelet2-core lanelet2-traffic-rules mrt-cmake-modules ];
  nativeBuildInputs = [ catkin mrt-cmake-modules ];

  meta = {
    description = ''Library to match objects to lanelets'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
