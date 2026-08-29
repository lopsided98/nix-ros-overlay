
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, python3Packages, rclpy, roboplan, roboplan-ros-cpp, sensor-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-lyrical-roboplan-ros-py";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/lyrical/roboplan_ros_py/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "9443850fc5deefbf10c6b560fd9137aab2105dd43428b2c7e588765208ce8c72";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy roboplan roboplan-ros-cpp sensor-msgs trajectory-msgs ];

  meta = {
    description = "ROS 2 Python bindings for the roboplan motion planning library.";
    license = with lib.licenses; [ mit ];
  };
}
