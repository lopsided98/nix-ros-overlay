
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, performance-test-fixture, rcpputils, rcutils, rmw, rmw-connextdds, rmw-cyclonedds-cpp, rmw-fastrtps-cpp, rmw-fastrtps-dynamic-cpp, rmw-implementation-cmake }:
buildRosPackage {
  pname = "ros-galactic-rmw-implementation";
  version = "2.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_implementation-release/archive/release/galactic/rmw_implementation/2.4.1-3.tar.gz";
    name = "2.4.1-3.tar.gz";
    sha256 = "855a6aed35b89f41b93ad4d9c675efdf9d92eab1cc3d271c6e91e950f4797d3c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmw rmw-connextdds rmw-cyclonedds-cpp rmw-fastrtps-cpp rmw-fastrtps-dynamic-cpp ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ rcpputils rcutils rmw-implementation-cmake ];
  nativeBuildInputs = [ ament-cmake rmw-implementation-cmake ];

  meta = {
    description = ''The decision which ROS middleware implementation should be used for C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
