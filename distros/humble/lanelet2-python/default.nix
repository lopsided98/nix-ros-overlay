
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, gtest, lanelet2-core, lanelet2-io, lanelet2-matching, lanelet2-projection, lanelet2-routing, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-humble-lanelet2-python";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/humble/lanelet2_python/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "f95cb4bbf5dbcce0ae892506869526de6bebc0a98af2db232f611d71c941a6db";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost lanelet2-core lanelet2-io lanelet2-matching lanelet2-projection lanelet2-routing lanelet2-traffic-rules mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = "Python bindings for lanelet2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
