
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-teleop";
  version = "2.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/jazzy/turtlebot3_teleop/2.3.6-1.tar.gz";
    name = "2.3.6-1.tar.gz";
    sha256 = "3f016650b6923d74a15a68a852203813cc13f381e045dae0fccef911aa4ea93b";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = "Teleoperation node using keyboard for TurtleBot3.";
    license = with lib.licenses; [ asl20 ];
  };
}
