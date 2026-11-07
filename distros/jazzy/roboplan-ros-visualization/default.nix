
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-cpp, geometry-msgs, interactive-markers, python3, python3Packages, rclcpp, rclpy, roboplan-core, roboplan-ros-cpp, roboplan-simple-ik, rviz2, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-roboplan-ros-visualization";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/jazzy/roboplan_ros_visualization/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "d4fcf25a732173d44a4705648eafb6eeea009ae1065e2d5dc528476c3b0bd52a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.nanobind python3Packages.typing-extensions ];
  checkInputs = [ roboplan-simple-ik ];
  propagatedBuildInputs = [ ament-index-cpp geometry-msgs interactive-markers rclcpp rclpy roboplan-core roboplan-ros-cpp rviz2 sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "ROS 2 visualization tools for the RoboPlan library.";
    license = with lib.licenses; [ mit ];
  };
}
