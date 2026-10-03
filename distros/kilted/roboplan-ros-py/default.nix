
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, python3Packages, rclpy, roboplan-core, roboplan-ros-cpp, roboplan-ros-visualization, sensor-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kilted-roboplan-ros-py";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/kilted/roboplan_ros_py/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "d956f4a4489814dc5b15371bf4f93e06a87e7c2ee8139557a802272502e64eeb";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy roboplan-core roboplan-ros-cpp roboplan-ros-visualization sensor-msgs trajectory-msgs ];

  meta = {
    description = "ROS 2 Python bindings for the roboplan motion planning library.";
    license = with lib.licenses; [ mit ];
  };
}
