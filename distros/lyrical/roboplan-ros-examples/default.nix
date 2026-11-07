
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, control-msgs, rclpy, roboplan-core, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-roboplan-ros-examples";
  version = "0.8.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/lyrical/roboplan_ros_examples/0.8.0-2.tar.gz";
    name = "0.8.0-2.tar.gz";
    sha256 = "2ae814a9e8c964c6388f4f6c9fa527a768c7c53516ac1431b8fc0fac4659793b";
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
