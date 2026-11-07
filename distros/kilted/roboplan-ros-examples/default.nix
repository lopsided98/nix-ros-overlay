
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, control-msgs, rclpy, roboplan-core, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-roboplan-ros-examples";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/kilted/roboplan_ros_examples/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "46da897ed81e61f0d627dab2504ceed1ccfc0d6d7a56b026695d81b9e7b49bfa";
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
