
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-noetic-lanelet2-traffic-rules";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2_traffic_rules/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "85f85ce06f1e71e26bd5c8bea1fa08cbc32300547fa4d417cccec8b8231e970a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ lanelet2-core mrt-cmake-modules ];
  nativeBuildInputs = [ catkin mrt-cmake-modules ];

  meta = {
    description = ''Package for interpreting traffic rules in a lanelet map'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
