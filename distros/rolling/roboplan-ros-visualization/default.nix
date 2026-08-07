
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-cpp, geometry-msgs, interactive-markers, python3, python3Packages, rclcpp, rclpy, roboplan, roboplan-ros-cpp, roboplan-simple-ik, rviz2, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-roboplan-ros-visualization";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/rolling/roboplan_ros_visualization/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "8448f10713002f03a2b648cb201816788cb6cec7017519df98498be76e2668af";
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
