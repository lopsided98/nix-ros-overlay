
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, rclcpp, rclpy, rosbag2-py, rosidl-runtime-py, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-lyrical-jsk-ros1-ros2-compat";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/lyrical/jsk_ros1_ros2_compat/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "cde0b5b511966b7ce5e6e5b3a0f9d31bac6ad4a69a768e249ab5ffb7230b4519";
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
