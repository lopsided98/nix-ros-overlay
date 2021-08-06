
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-galactic-lanelet2-traffic-rules";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/galactic/lanelet2_traffic_rules/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "58952f01ce2ee3d971e77f278eff800fb1c79e89e81a3942f1c6e3f3779e8cfc";
  };

  buildType = "catkin";
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ lanelet2-core mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = ''Package for interpreting traffic rules in a lanelet map'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
