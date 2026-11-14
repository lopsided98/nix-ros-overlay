
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-kilted-turtlebot3-teleop";
  version = "2.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/kilted/turtlebot3_teleop/2.3.7-1.tar.gz";
    name = "2.3.7-1.tar.gz";
    sha256 = "363a150ccc9fde2b0f6164d8edbc294c6555335142316a2fd70a1cbd122be4b2";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = "Teleoperation node using keyboard for TurtleBot3.";
    license = with lib.licenses; [ asl20 ];
  };
}
