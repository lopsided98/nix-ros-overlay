
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-autorace-detect";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_autorace-release/archive/release/jazzy/turtlebot3_autorace_detect/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "1bc6314922261b88b7f19d803ae22cf1253fb552093587cf7b7cbdb668b5c8c5";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = "ROS 2 packages for turtlebot3_autorace_detect";
    license = with lib.licenses; [ asl20 ];
  };
}
