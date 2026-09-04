
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, geometry-msgs, moveit-core, moveit-ros-planning, moveit-ros-planning-interface, octomap-msgs, python3Packages, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-rolling-moveit-py";
  version = "2.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_py/2.15.1-1.tar.gz";
    name = "2.15.1-1.tar.gz";
    sha256 = "0454377dc15c0b29bc4d02cdef77deca4e2ba04502a70e4a6d5d5d8b242fd9c5";
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
