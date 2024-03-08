
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, gtest, lanelet2-core, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-rolling-lanelet2-routing";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/rolling/lanelet2_routing/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "5252151cacf404664dd25f00d7991051cb2d6e3571f394b655423b274164b6af";
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
