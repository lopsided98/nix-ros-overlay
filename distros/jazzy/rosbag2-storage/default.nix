
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, pluginlib, rclcpp, rcutils, rmw, rosbag2-test-common, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2-storage";
  version = "0.26.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/rosbag2_storage/0.26.6-1.tar.gz";
    name = "0.26.6-1.tar.gz";
    sha256 = "636bf92a30defd2610a4cc0f27cb0f3a0ab7a4a5407aea9ef5d509b269e7cec8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common rosbag2-test-common ];
  propagatedBuildInputs = [ pluginlib rclcpp rcutils rmw yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 independent storage format to store serialized ROS2 messages";
    license = with lib.licenses; [ asl20 ];
  };
}
