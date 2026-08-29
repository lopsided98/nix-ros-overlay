
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, control-msgs, rclpy, roboplan, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-roboplan-ros-examples";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/rolling/roboplan_ros_examples/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "70f374f514ae3c8bf3e0ff22a477f15d94898cc8bfa10b1d91580b3a1b095b66";
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
