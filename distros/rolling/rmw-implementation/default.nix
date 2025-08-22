
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, performance-test-fixture, rcpputils, rcutils, rmw, rmw-connextdds, rmw-cyclonedds-cpp, rmw-fastrtps-cpp, rmw-fastrtps-dynamic-cpp, rmw-implementation-cmake }:
buildRosPackage {
  pname = "ros-rolling-rmw-implementation";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_implementation-release/archive/release/rolling/rmw_implementation/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "fc58d2f2d9a1ba57c8331f355c83a282f401de590b4c006ea9ecc843cf92f867";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmw rmw-connextdds rmw-cyclonedds-cpp rmw-fastrtps-cpp rmw-fastrtps-dynamic-cpp ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ ament-index-cpp rcpputils rcutils rmw-implementation-cmake ];
  nativeBuildInputs = [ ament-cmake rmw-implementation-cmake ];

  meta = {
    description = "Proxy implementation of the ROS 2 Middleware Interface.";
    license = with lib.licenses; [ asl20 ];
  };
}
