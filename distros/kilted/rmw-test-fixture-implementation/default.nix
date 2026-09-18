
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, python3, rcpputils, rcutils, rmw, rmw-implementation, rmw-implementation-cmake, rmw-test-fixture, rpyutils }:
buildRosPackage {
  pname = "ros-kilted-rmw-test-fixture-implementation";
  version = "0.14.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/kilted/rmw_test_fixture_implementation/0.14.8-1.tar.gz";
    name = "0.14.8-1.tar.gz";
    sha256 = "770e7e4c81764856fc552c0ba8c343ceee868a811fd803d505eeddf9524e2926";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core python3 rmw-implementation rmw-implementation-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcpputils rcutils rmw rmw-test-fixture rpyutils ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Tools for isolating ROS environments at the RMW layer";
    license = with lib.licenses; [ asl20 ];
  };
}
