
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, rclcpp, rclpy, rosbag2-py, rosidl-runtime-py, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-kilted-jsk-ros1-ros2-compat";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kilted/jsk_ros1_ros2_compat/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "2651d017d8ec1dba5d02a053743a62586399cddfa4681fb01f4756820709dfd5";
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
