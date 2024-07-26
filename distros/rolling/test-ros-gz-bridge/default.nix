
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-ros, launch-testing, launch-testing-ament-cmake, ros-gz-bridge }:
buildRosPackage {
  pname = "ros-rolling-test-ros-gz-bridge";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/rolling/test_ros_gz_bridge/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "f4b7e82c1ed66beef600e5ee8781e814099d3e700d6ddffd4a56e9a17c1bb18c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ ros-gz-bridge ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Bridge communication between ROS and Gazebo Transport";
    license = with lib.licenses; [ asl20 ];
  };
}
