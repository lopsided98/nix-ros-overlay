
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, control-msgs, rclpy, roboplan-core, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-roboplan-ros-examples";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/rolling/roboplan_ros_examples/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "0be701a0c61808d1ecf5f2252b4e01882e385008359cdb18c57cbe9ef165479c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ control-msgs rclpy roboplan-core sensor-msgs std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Examples of using RoboPlan in the ROS ecosystem.";
    license = with lib.licenses; [ mit ];
  };
}
