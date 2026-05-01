
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, rmw }:
buildRosPackage {
  pname = "ros-lyrical-rmw-test-fixture";
  version = "0.15.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/lyrical/rmw_test_fixture/0.15.8-1.tar.gz";
    name = "0.15.8-1.tar.gz";
    sha256 = "c1a29712e942f422d42931463fa5fac436bfa75f06547a0000199a37f07ac466";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rmw ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Plugin interface for tools for isolating ROS communication at the RMW layer";
    license = with lib.licenses; [ asl20 ];
  };
}
