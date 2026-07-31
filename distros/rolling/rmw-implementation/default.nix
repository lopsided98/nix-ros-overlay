
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros-core, ament-index-cpp, ament-lint-auto, ament-lint-common, performance-test-fixture, rcpputils, rcutils, rmw, rmw-connextdds, rmw-cyclonedds-cpp, rmw-fastrtps-cpp, rmw-fastrtps-dynamic-cpp, rmw-implementation-cmake, rmw-zenoh-cpp }:
buildRosPackage {
  pname = "ros-rolling-rmw-implementation";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_implementation-release/archive/release/rolling/rmw_implementation/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "590b82d177bb8c0765998603f6a24839e650d42eb34353e195ddf521f78f768e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmw rmw-connextdds rmw-cyclonedds-cpp rmw-fastrtps-cpp rmw-fastrtps-dynamic-cpp rmw-zenoh-cpp ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake-ros-core ament-index-cpp rcpputils rcutils rmw-implementation-cmake ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core rmw-implementation-cmake ];

  meta = {
    description = "Proxy implementation of the ROS 2 Middleware Interface.";
    license = with lib.licenses; [ asl20 ];
  };
}
