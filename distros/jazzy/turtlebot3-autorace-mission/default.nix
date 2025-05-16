
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-autorace-mission";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_autorace-release/archive/release/jazzy/turtlebot3_autorace_mission/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "ec4e75e1a84e6ab238d34bf3e3325029c5216f0d41f36d76740f1faa92da350a";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = "ROS 2 packages for turtlebot3_autorace_mission";
    license = with lib.licenses; [ asl20 ];
  };
}
