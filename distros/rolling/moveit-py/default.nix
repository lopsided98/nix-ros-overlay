
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, geometry-msgs, moveit-core, moveit-ros-planning, moveit-ros-planning-interface, octomap-msgs, pybind11-vendor, pythonPackages, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-rolling-moveit-py";
  version = "2.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_py/2.7.3-1.tar.gz";
    name = "2.7.3-1.tar.gz";
    sha256 = "de6f92ec0610f1c946994c904783b3785f21a84ecf0492ebffb9b89ac7362761";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pybind11-vendor ];
  checkInputs = [ ament-cmake-pytest pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python geometry-msgs moveit-core moveit-ros-planning moveit-ros-planning-interface octomap-msgs rclcpp rclpy ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Python binding for MoveIt 2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
