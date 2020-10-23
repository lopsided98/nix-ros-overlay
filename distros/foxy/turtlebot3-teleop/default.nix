
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-teleop";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/foxy/turtlebot3_teleop/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "3b56ff28b23a4c165fbc4bf4e0686cb4691b74531cc01eb9e1b1bb242ce0834c";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = ''Teleoperation node using keyboard for TurtleBot3.'';
    license = with lib.licenses; [ asl20 ];
  };
}
