
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, python3Packages, rclpy, roboplan, roboplan-ros-cpp, sensor-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-roboplan-ros-py";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/rolling/roboplan_ros_py/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "641b6378adab1d88925dc2e18aedb7377b5a70cf46f84ba0d53200cca5dd330f";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy roboplan roboplan-ros-cpp sensor-msgs trajectory-msgs ];

  meta = {
    description = "ROS 2 Python bindings for the roboplan motion planning library.";
    license = with lib.licenses; [ mit ];
  };
}
