
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, controller-manager, gz-ros2-control-demos, ign-ros2-control-demos, launch, launch-ros, launch-testing-ament-cmake, launch-testing-ros, python3Packages, rclpy, ros2launch, rosgraph-msgs }:
buildRosPackage {
  pname = "ros-humble-gz-ros2-control-tests";
  version = "0.7.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/humble/gz_ros2_control_tests/0.7.13-1.tar.gz";
    name = "0.7.13-1.tar.gz";
    sha256 = "996f966c0f1e4833d7c1e581ddabec70a056159d7e02b121a8a183f300d5399d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-index-python ament-lint-auto ament-lint-common controller-manager gz-ros2-control-demos ign-ros2-control-demos launch launch-ros launch-testing-ament-cmake launch-testing-ros python3Packages.psutil python3Packages.pytest rclpy ros2launch rosgraph-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo ros2 control tests";
    license = with lib.licenses; [ asl20 ];
  };
}
