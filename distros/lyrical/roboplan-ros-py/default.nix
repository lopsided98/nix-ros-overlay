
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, python3Packages, rclpy, roboplan-core, roboplan-ros-cpp, roboplan-ros-visualization, sensor-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-lyrical-roboplan-ros-py";
  version = "0.8.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/lyrical/roboplan_ros_py/0.8.0-2.tar.gz";
    name = "0.8.0-2.tar.gz";
    sha256 = "2348a0441dc452e5c933e9463b6b7972f2b4ff361229571f7374f4fc03ce8345";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy roboplan-core roboplan-ros-cpp roboplan-ros-visualization sensor-msgs trajectory-msgs ];

  meta = {
    description = "ROS 2 Python bindings for the roboplan motion planning library.";
    license = with lib.licenses; [ mit ];
  };
}
