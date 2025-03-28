
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-teleop";
  version = "2.2.5-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/humble/turtlebot3_teleop/2.2.5-1.tar.gz";
    name = "2.2.5-1.tar.gz";
    sha256 = "8b6f22439d6b60d83e8eb9ad17771729c81347c0fb4ce81663a5a981bdc1d4d9";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = "Teleoperation node using keyboard for TurtleBot3.";
    license = with lib.licenses; [ asl20 ];
  };
}
