
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-teleop";
  version = "2.2.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/jazzy/turtlebot3_teleop/2.2.8-1.tar.gz";
    name = "2.2.8-1.tar.gz";
    sha256 = "311405ec8e15e81f08f4ab8d407eec557e02370c3ad3650a799b7a4216cd01b2";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = "Teleoperation node using keyboard for TurtleBot3.";
    license = with lib.licenses; [ asl20 ];
  };
}
