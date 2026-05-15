
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, pluginlib, rclcpp, rcutils, rmw, rosbag2-test-common, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-rosbag2-storage";
  version = "0.33.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/lyrical/rosbag2_storage/0.33.3-1.tar.gz";
    name = "0.33.3-1.tar.gz";
    sha256 = "65f8c988b54b39cec4621d1a856d8dfdfb4a7ac331ca0d78d6a96d1954f4bf8c";
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
