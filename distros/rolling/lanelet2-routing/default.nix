
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, gtest, lanelet2-core, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-rolling-lanelet2-routing";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/rolling/lanelet2_routing/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "ac0fe8348cae878510ddaebc00c55b5d897984825c429855ed6fc72236c75992";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost lanelet2-core lanelet2-traffic-rules mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = "Routing module for lanelet2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
