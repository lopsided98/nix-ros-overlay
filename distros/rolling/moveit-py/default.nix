
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, geometry-msgs, moveit-core, moveit-ros-planning, moveit-ros-planning-interface, octomap-msgs, pybind11-vendor, python3Packages, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-rolling-moveit-py";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_py/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "47eeee576d4f2b2d788ed99acce0331f37b792916d7f3da1f4d1ade460baba03";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pybind11-vendor ];
  checkInputs = [ ament-cmake-pytest python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python geometry-msgs moveit-core moveit-ros-planning moveit-ros-planning-interface octomap-msgs rclcpp rclpy ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Python binding for MoveIt 2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
