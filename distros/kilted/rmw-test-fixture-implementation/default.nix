
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, python3, rcpputils, rcutils, rmw, rmw-implementation, rmw-implementation-cmake, rmw-test-fixture, rmw-zenoh-cpp, rpyutils }:
buildRosPackage {
  pname = "ros-kilted-rmw-test-fixture-implementation";
  version = "0.14.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/kilted/rmw_test_fixture_implementation/0.14.3-2.tar.gz";
    name = "0.14.3-2.tar.gz";
    sha256 = "eaf28c984f92d7ecf4de77e46ff4ed17244dfd0a621dd4000f309dab3d27de37";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core python3 rmw-implementation rmw-implementation-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcpputils rcutils rmw rmw-test-fixture rmw-zenoh-cpp rpyutils ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Tools for isolating ROS environments at the RMW layer";
    license = with lib.licenses; [ asl20 ];
  };
}
