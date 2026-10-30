
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, rclcpp, rclpy, rosbag2-py, rosidl-runtime-py, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-jazzy-jsk-ros1-ros2-compat";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/jazzy/jsk_ros1_ros2_compat/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "749ec006f6f12f69cdc99a257e0df364a812ad9b2c7bed30927f61143e9b58c4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ rclcpp rclpy rosbag2-py rosidl-runtime-py tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared ROS1(roscpp/rospy)/ROS2(rclcpp/rclpy) compatibility helpers used across jsk_common's ROS2-ported packages, so that individual packages don't each maintain their own copy.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
