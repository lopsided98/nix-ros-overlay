
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-teleop";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/foxy/turtlebot3_teleop/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "79c4d0d4666114f01713a56cb5a30a1e57febbdfb58ca1a6ae00a1c97c3e80fa";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = ''Teleoperation node using keyboard for TurtleBot3.'';
    license = with lib.licenses; [ asl20 ];
  };
}
