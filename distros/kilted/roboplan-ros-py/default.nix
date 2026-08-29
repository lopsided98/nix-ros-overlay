
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, python3Packages, rclpy, roboplan, roboplan-ros-cpp, sensor-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kilted-roboplan-ros-py";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/kilted/roboplan_ros_py/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "f5adbb9fd52a57a8817983e15cd375314717642620997755dfe270c718d39a83";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy roboplan roboplan-ros-cpp sensor-msgs trajectory-msgs ];

  meta = {
    description = "ROS 2 Python bindings for the roboplan motion planning library.";
    license = with lib.licenses; [ mit ];
  };
}
