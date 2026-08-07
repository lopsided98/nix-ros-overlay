
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, control-msgs, rclpy, roboplan, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-roboplan-ros-examples";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/rolling/roboplan_ros_examples/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "9b62c7294a140b9ffd31607783cb25b1aa6b93b54adf403080a5a1f3f1caa3ae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  propagatedBuildInputs = [ control-msgs rclpy roboplan sensor-msgs std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-python ];

  meta = {
    description = "Examples of using RoboPlan in the ROS ecosystem.";
    license = with lib.licenses; [ mit ];
  };
}
