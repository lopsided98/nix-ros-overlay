
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, lanelet2-core, lanelet2-io, lanelet2-matching, lanelet2-projection, lanelet2-python, lanelet2-routing, lanelet2-traffic-rules, mrt-cmake-modules, rosbash }:
buildRosPackage {
  pname = "ros-noetic-lanelet2-examples";
  version = "1.2.2-r2";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2_examples/1.2.2-2.tar.gz";
    name = "1.2.2-2.tar.gz";
    sha256 = "316e1724f14ef5a232793616797b3a60b73ea0973b8d824d42ef7cb17073353a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ lanelet2-core lanelet2-io lanelet2-matching lanelet2-projection lanelet2-python lanelet2-routing lanelet2-traffic-rules mrt-cmake-modules rosbash ];
  nativeBuildInputs = [ catkin mrt-cmake-modules ];

  meta = {
    description = "Examples for working with Lanelet2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
