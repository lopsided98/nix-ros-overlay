
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-cpp, geometry-msgs, interactive-markers, python3, python3Packages, rclcpp, rclpy, roboplan, roboplan-ros-cpp, roboplan-simple-ik, rviz2, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-roboplan-ros-visualization";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/kilted/roboplan_ros_visualization/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "3d65a47854938bce5b717a88c985c2bb00a4a2d29200ad0161788f34acf09274";
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
