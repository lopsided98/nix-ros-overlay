
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, geometry-msgs, moveit-core, moveit-ros-planning, moveit-ros-planning-interface, octomap-msgs, pybind11-vendor, pythonPackages, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-iron-moveit-py";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/iron/moveit_py/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "e49888251642e1f0049e58cf78e627b443294efea15034b94d1caa9e18dc40d2";
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
