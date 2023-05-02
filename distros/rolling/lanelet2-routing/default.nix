
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, gtest, lanelet2-core, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-rolling-lanelet2-routing";
  version = "1.1.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/rolling/lanelet2_routing/1.1.1-4.tar.gz";
    name = "1.1.1-4.tar.gz";
    sha256 = "8a203364f40969d7d013f973bbd651bab67f4ea73ad999c0dee00bad7dd42622";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost lanelet2-core lanelet2-traffic-rules mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = ''Routing module for lanelet2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
