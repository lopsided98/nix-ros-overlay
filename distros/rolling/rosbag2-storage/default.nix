
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, pluginlib, rclcpp, rcutils, rmw, rosbag2-test-common, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-storage";
  version = "0.31.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_storage/0.31.0-1.tar.gz";
    name = "0.31.0-1.tar.gz";
    sha256 = "70e8bb8d4f57039462646e422fd939a50881ce8cc1f8180da7da27810e034dec";
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
