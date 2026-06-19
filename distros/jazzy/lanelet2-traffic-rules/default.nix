
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-jazzy-lanelet2-traffic-rules";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/jazzy/lanelet2_traffic_rules/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "8a1152ea2e423b264a38cf29a63d9b7cf48f2cfd346540df1cc6467ea68b75f5";
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
