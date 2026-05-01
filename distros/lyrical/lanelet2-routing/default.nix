
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, gtest, lanelet2-core, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-lyrical-lanelet2-routing";
  version = "1.2.1-r8";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/lyrical/lanelet2_routing/1.2.1-8.tar.gz";
    name = "1.2.1-8.tar.gz";
    sha256 = "97a3db729c74e0d34457f874e26f8cab733e32f271d547932ec44bec10f21407";
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
