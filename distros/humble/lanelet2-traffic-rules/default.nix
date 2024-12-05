
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-humble-lanelet2-traffic-rules";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/humble/lanelet2_traffic_rules/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "4c08f6ca0fb132c1bf595af974ece90088463e2015566d22d60866a2d08ee141";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ lanelet2-core mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = "Package for interpreting traffic rules in a lanelet map";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
