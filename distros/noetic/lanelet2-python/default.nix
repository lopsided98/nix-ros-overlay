
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, gtest, lanelet2-core, lanelet2-io, lanelet2-projection, lanelet2-routing, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-noetic-lanelet2-python";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2_python/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "12f04c8e937e1ac5f922d3f8afe4ef6f847d5a06a29bbbcfa1724379800841f9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost lanelet2-core lanelet2-io lanelet2-projection lanelet2-routing lanelet2-traffic-rules mrt-cmake-modules ];
  nativeBuildInputs = [ catkin mrt-cmake-modules ];

  meta = {
    description = ''Python bindings for lanelet2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
