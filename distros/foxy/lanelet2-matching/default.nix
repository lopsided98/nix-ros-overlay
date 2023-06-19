
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest, lanelet2-core, lanelet2-io, lanelet2-maps, lanelet2-projection, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-foxy-lanelet2-matching";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/foxy/lanelet2_matching/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "2e7f7249a29305b5f60561263817e49945c25bba9d5967d28c87c1ed0fe410d3";
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
