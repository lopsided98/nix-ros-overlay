
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-eloquent-turtlebot3-teleop";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/eloquent/turtlebot3_teleop/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "5a17c43e43f97e81d9ecc41e2e1852bcb317cf9094cc743f0108145720a18c6e";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = ''Teleoperation node using keyboard for TurtleBot3.'';
    license = with lib.licenses; [ asl20 ];
  };
}
