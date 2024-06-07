
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, gtest, lanelet2-core, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-jazzy-lanelet2-routing";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/jazzy/lanelet2_routing/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "6f65408db841fa960cab62b1f3e1729c93636957e7fc4a964217b7a1d42dc40d";
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
