
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-turtlebot3-autorace-detect";
  version = "1.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_autorace-release/archive/release/rolling/turtlebot3_autorace_detect/1.2.2-2.tar.gz";
    name = "1.2.2-2.tar.gz";
    sha256 = "b8eb761304eb38286e727b5c3d58eb88c74062b7d3434d22f5d4e90070f1520b";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = "ROS 2 packages for turtlebot3_autorace_detect";
    license = with lib.licenses; [ asl20 ];
  };
}
