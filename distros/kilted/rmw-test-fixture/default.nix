
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, rmw }:
buildRosPackage {
  pname = "ros-kilted-rmw-test-fixture";
  version = "0.14.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/kilted/rmw_test_fixture/0.14.7-1.tar.gz";
    name = "0.14.7-1.tar.gz";
    sha256 = "a88eb49a20d165d448681da957f267d4f63231c771f018084b44b1d4a79c41b8";
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
