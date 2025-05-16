
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-autorace-mission";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_autorace-release/archive/release/humble/turtlebot3_autorace_mission/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "b1f4684824a6ec2a204a235abf5505e07bfe94add29773373ae62bbc8c6056e9";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = "ROS 2 packages for turtlebot3_autorace_mission";
    license = with lib.licenses; [ asl20 ];
  };
}
