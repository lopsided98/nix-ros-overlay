
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-noetic-lanelet2-traffic-rules";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2_traffic_rules/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "e3b668ffb054dd6f86ba12d1b57994b5e97ad25f704784e6b3155a832f685164";
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
