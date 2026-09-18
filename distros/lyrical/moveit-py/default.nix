
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, geometry-msgs, moveit-core, moveit-ros-planning, moveit-ros-planning-interface, octomap-msgs, python3Packages, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-moveit-py";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_py/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "b7756f4ceaf44564be60dc1b4baa8645582646a6f72e238ddf11032488a348bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python3Packages.pybind11 ];
  checkInputs = [ ament-cmake-pytest python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python geometry-msgs moveit-core moveit-ros-planning moveit-ros-planning-interface octomap-msgs rclcpp rclpy ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Python binding for MoveIt 2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
