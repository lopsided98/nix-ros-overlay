
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, gtest, lanelet2-core, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-humble-lanelet2-routing";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/humble/lanelet2_routing/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "1a78a2df3c330cdcb8bc3b67c2de411f367094a53850fc385cff2edafed971b9";
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
