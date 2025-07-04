
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, controller-manager, gz-ros2-control-demos, ign-ros2-control-demos, launch, launch-ros, launch-testing-ament-cmake, launch-testing-ros, python3Packages, rclpy, ros2launch, rosgraph-msgs }:
buildRosPackage {
  pname = "ros-humble-gz-ros2-control-tests";
  version = "0.7.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/humble/gz_ros2_control_tests/0.7.15-1.tar.gz";
    name = "0.7.15-1.tar.gz";
    sha256 = "fdbed8172ce270ece6a6f795f332d7856eac9d1eced89822507ba6c3bb4e3713";
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
