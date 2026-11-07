
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, curl, example-interfaces, rclcpp, rclpy, ros-environment, rosbag2-py, rosidl-runtime-py, std-msgs, std-srvs, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-jazzy-jsk-ros1-ros2-compat";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/jazzy/jsk_ros1_ros2_compat/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "ebc3535e2c835eb7ad9046f18657e22e30b6fd81c015c1f4c0e1b9fe2d1db91c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python curl ros-environment ];
  checkInputs = [ ament-cmake-pytest example-interfaces std-msgs std-srvs ];
  propagatedBuildInputs = [ rclcpp rclpy rosbag2-py rosidl-runtime-py tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake ros-environment ];

  meta = {
    description = "Shared ROS1(roscpp/rospy)/ROS2(rclcpp/rclpy) compatibility helpers used across jsk_common's ROS2-ported packages, so that individual packages don't each maintain their own copy.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
