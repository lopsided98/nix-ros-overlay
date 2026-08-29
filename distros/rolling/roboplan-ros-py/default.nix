
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, python3Packages, rclpy, roboplan, roboplan-ros-cpp, sensor-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-roboplan-ros-py";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/rolling/roboplan_ros_py/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "a508fbc1b4e5f34fa187eae8d4a762ae26ea8ef8a9e4805906cb972b5be7b835";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy roboplan roboplan-ros-cpp sensor-msgs trajectory-msgs ];

  meta = {
    description = "ROS 2 Python bindings for the roboplan motion planning library.";
    license = with lib.licenses; [ mit ];
  };
}
