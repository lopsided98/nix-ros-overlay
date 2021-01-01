
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, lanelet2-core, lanelet2-io, lanelet2-projection, lanelet2-python, lanelet2-routing, lanelet2-traffic-rules, mrt-cmake-modules, rosbash }:
buildRosPackage {
  pname = "ros-noetic-lanelet2-examples";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2_examples/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "57602b504adc7f742ff2a6cd04f679e515e0ad4e88bd3d698130eb47f205b524";
  };

  buildType = "catkin";
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ lanelet2-core lanelet2-io lanelet2-projection lanelet2-python lanelet2-routing lanelet2-traffic-rules mrt-cmake-modules rosbash ];
  nativeBuildInputs = [ catkin mrt-cmake-modules ];

  meta = {
    description = ''Examples for working with Lanelet2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
