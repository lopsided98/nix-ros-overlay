
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, geometry-msgs, moveit-core, moveit-ros-planning, moveit-ros-planning-interface, octomap-msgs, pybind11-vendor, pythonPackages, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-rolling-moveit-py";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_py/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "9d15bac9579e9d562866b277583f19334bf8e27ef87cfafc65ec8cd6a7436400";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pybind11-vendor ];
  checkInputs = [ ament-cmake-pytest pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python geometry-msgs moveit-core moveit-ros-planning moveit-ros-planning-interface octomap-msgs rclcpp rclpy ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Python binding for MoveIt 2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
