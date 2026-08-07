
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-cpp, geometry-msgs, interactive-markers, python3, python3Packages, rclcpp, rclpy, roboplan, roboplan-ros-cpp, roboplan-simple-ik, rviz2, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-roboplan-ros-visualization";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/jazzy/roboplan_ros_visualization/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "1773c7079643b7240ca90c410f0b1bdafa4351776389be031bec283e4da8cf90";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.nanobind ];
  propagatedBuildInputs = [ ament-index-cpp geometry-msgs interactive-markers rclcpp rclpy roboplan roboplan-ros-cpp roboplan-simple-ik rviz2 sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "ROS 2 visualization tools for the RoboPlan library.";
    license = with lib.licenses; [ mit ];
  };
}
