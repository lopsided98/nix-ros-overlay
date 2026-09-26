
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, python3Packages, rclpy, roboplan-core, roboplan-ros-cpp, roboplan-ros-visualization, sensor-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-lyrical-roboplan-ros-py";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/lyrical/roboplan_ros_py/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "893f8a2d89521551211a061248bdd0245771a1522e78917ee7890d5b85ef18b7";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy roboplan-core roboplan-ros-cpp roboplan-ros-visualization sensor-msgs trajectory-msgs ];

  meta = {
    description = "ROS 2 Python bindings for the roboplan motion planning library.";
    license = with lib.licenses; [ mit ];
  };
}
