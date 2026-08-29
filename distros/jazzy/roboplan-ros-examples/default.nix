
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, control-msgs, rclpy, roboplan, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-roboplan-ros-examples";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/jazzy/roboplan_ros_examples/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "ed167bd0c359996a80b7aba1c2c6b4fb2d944d618b4dbbd21c9de06166e820d7";
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
