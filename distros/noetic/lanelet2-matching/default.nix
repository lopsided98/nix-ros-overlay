
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, lanelet2-core, lanelet2-io, lanelet2-maps, lanelet2-projection, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-noetic-lanelet2-matching";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2_matching/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "4b06f673bbb0c2daa71c136bbf64300e16cee3a9da8b8ab01f3f13de882afadd";
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
