
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, performance-test-fixture, rcpputils, rcutils, rmw, rmw-connextdds, rmw-cyclonedds-cpp, rmw-fastrtps-cpp, rmw-fastrtps-dynamic-cpp, rmw-implementation-cmake, rmw-zenoh-cpp }:
buildRosPackage {
  pname = "ros-lyrical-rmw-implementation";
  version = "3.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_implementation-release/archive/release/lyrical/rmw_implementation/3.1.7-1.tar.gz";
    name = "3.1.7-1.tar.gz";
    sha256 = "ca22fa1a250bf1bd8cd3e9629e1b88d7d4f969dafadff5ed6d7c81209f3cbd55";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmw rmw-connextdds rmw-cyclonedds-cpp rmw-fastrtps-cpp rmw-fastrtps-dynamic-cpp rmw-zenoh-cpp ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ ament-index-cpp rcpputils rcutils rmw-implementation-cmake ];
  nativeBuildInputs = [ ament-cmake rmw-implementation-cmake ];

  meta = {
    description = "Proxy implementation of the ROS 2 Middleware Interface.";
    license = with lib.licenses; [ asl20 ];
  };
}
