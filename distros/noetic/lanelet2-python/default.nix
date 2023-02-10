
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, gtest, lanelet2-core, lanelet2-io, lanelet2-matching, lanelet2-projection, lanelet2-routing, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-noetic-lanelet2-python";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2_python/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "8eba1e57bba5b61af36b28dd20e200d6fa9052034b8634b12a5d9b7807c53c1f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost lanelet2-core lanelet2-io lanelet2-matching lanelet2-projection lanelet2-routing lanelet2-traffic-rules mrt-cmake-modules ];
  nativeBuildInputs = [ catkin mrt-cmake-modules ];

  meta = {
    description = ''Python bindings for lanelet2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
