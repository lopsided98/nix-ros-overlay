
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-turtlebot3-autorace-detect";
  version = "1.2.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_autorace-release/archive/release/lyrical/turtlebot3_autorace_detect/1.2.2-3.tar.gz";
    name = "1.2.2-3.tar.gz";
    sha256 = "25a93a0d29e61707fa2ad73403c22b9f6e766ec42b3b450ee6a8840a6ad18d6e";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = "ROS 2 packages for turtlebot3_autorace_detect";
    license = with lib.licenses; [ asl20 ];
  };
}
