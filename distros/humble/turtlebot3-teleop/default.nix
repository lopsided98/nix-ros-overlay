
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-teleop";
  version = "2.2.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/humble/turtlebot3_teleop/2.2.9-1.tar.gz";
    name = "2.2.9-1.tar.gz";
    sha256 = "f53963ee67d6a80b1237dcb4b23e9f1bbf8475d38739363d0fffdf3179f01432";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = "Teleoperation node using keyboard for TurtleBot3.";
    license = with lib.licenses; [ asl20 ];
  };
}
