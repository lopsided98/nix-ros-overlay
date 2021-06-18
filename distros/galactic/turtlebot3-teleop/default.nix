
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-galactic-turtlebot3-teleop";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/galactic/turtlebot3_teleop/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "9b0156ea2b0f7b7590f1ba1e6dad3d6e6d0f7dd8653d5d873fd65d14e6abf5dc";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = ''Teleoperation node using keyboard for TurtleBot3.'';
    license = with lib.licenses; [ asl20 ];
  };
}
