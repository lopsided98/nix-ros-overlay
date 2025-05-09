
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-autorace-detect";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_autorace-release/archive/release/humble/turtlebot3_autorace_detect/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "45178773e25a9b2103557e97d4450092bddf018e3d8b57605e47dfaeba1ee73a";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = "ROS 2 packages for turtlebot3_autorace_detect";
    license = with lib.licenses; [ asl20 ];
  };
}
