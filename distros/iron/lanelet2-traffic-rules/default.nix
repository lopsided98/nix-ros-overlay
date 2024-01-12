
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-iron-lanelet2-traffic-rules";
  version = "1.1.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/iron/lanelet2_traffic_rules/1.1.1-5.tar.gz";
    name = "1.1.1-5.tar.gz";
    sha256 = "4c70d256782734112a8ab1d567033f7a209bf1f3604ab8865fcabd7a015a7a4f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ lanelet2-core mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = ''Package for interpreting traffic rules in a lanelet map'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
