
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, control-msgs, rclpy, roboplan, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-roboplan-ros-examples";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/kilted/roboplan_ros_examples/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "8608d93c9ffd0c15623fb82baa4022e34ba0b69f693c9aa03aec995115fc6244";
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
