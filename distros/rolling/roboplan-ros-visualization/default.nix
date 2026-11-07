
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-cpp, geometry-msgs, interactive-markers, python3, python3Packages, rclcpp, rclpy, roboplan-core, roboplan-ros-cpp, roboplan-simple-ik, rviz2, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-roboplan-ros-visualization";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/rolling/roboplan_ros_visualization/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "ed22ce75b6b68bb744848e4b8438f5b2e6d379678bb0278a81cd26b54bf4e11d";
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
