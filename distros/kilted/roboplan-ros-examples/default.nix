
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, control-msgs, rclpy, roboplan, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-roboplan-ros-examples";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/kilted/roboplan_ros_examples/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "ea5f75516c308c687e6361f022dac84cb4eac2c9427d2ae9e564db0c46d4c4f3";
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
