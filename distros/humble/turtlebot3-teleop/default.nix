
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-teleop";
  version = "2.2.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/humble/turtlebot3_teleop/2.2.8-1.tar.gz";
    name = "2.2.8-1.tar.gz";
    sha256 = "37a3f93717e087b4f771c52cff3fffaac5ac325f16f4bc829f6767158edef58d";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = "Teleoperation node using keyboard for TurtleBot3.";
    license = with lib.licenses; [ asl20 ];
  };
}
