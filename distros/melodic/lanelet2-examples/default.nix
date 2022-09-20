
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, lanelet2-core, lanelet2-io, lanelet2-projection, lanelet2-python, lanelet2-routing, lanelet2-traffic-rules, mrt-cmake-modules, rosbash }:
buildRosPackage {
  pname = "ros-melodic-lanelet2-examples";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/melodic/lanelet2_examples/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "9f93b536ff1bc3af4626a20119bbcf166d0468f0b3ddd108ac6a484ca7e67ffc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest rosbash ];
  propagatedBuildInputs = [ lanelet2-core lanelet2-io lanelet2-projection lanelet2-python lanelet2-routing lanelet2-traffic-rules mrt-cmake-modules ];
  nativeBuildInputs = [ catkin mrt-cmake-modules ];

  meta = {
    description = ''Examples for working with Lanelet2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
