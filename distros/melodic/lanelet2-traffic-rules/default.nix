
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-melodic-lanelet2-traffic-rules";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/melodic/lanelet2_traffic_rules/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f4c595f49fde53881eb785a245e2b4d60a6cf43209d1d5dcdc6d96d6f928f6a3";
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
