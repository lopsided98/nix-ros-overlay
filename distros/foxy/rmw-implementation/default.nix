
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, performance-test-fixture, rcpputils, rcutils, rmw, rmw-connext-cpp, rmw-cyclonedds-cpp, rmw-fastrtps-cpp, rmw-implementation-cmake }:
buildRosPackage {
  pname = "ros-foxy-rmw-implementation";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_implementation-release/archive/release/foxy/rmw_implementation/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "ba4680bb07ea1d1692ed34c4c28eddc20b8becb4f6e0800c1d22dd6d335cb74c";
  };

  buildType = "ament_cmake";
  buildInputs = [ rmw rmw-connext-cpp rmw-cyclonedds-cpp rmw-fastrtps-cpp ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ rcpputils rcutils rmw-implementation-cmake ];
  nativeBuildInputs = [ ament-cmake rmw-implementation-cmake ];

  meta = {
    description = ''The decision which ROS middleware implementation should be used for C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
