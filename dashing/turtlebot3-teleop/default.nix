
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-turtlebot3-teleop";
  version = "2.0.1-r1";

  src = fetchurl {
    url = https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/dashing/turtlebot3_teleop/2.0.1-1.tar.gz;
    sha256 = "1ec6c004e8e04d5b946d3e52d259b1aed8644ccaeca6dca29a16227adfdf1032";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy geometry-msgs ];

  meta = {
    description = ''Teleoperation node using keyboard for TurtleBot3.'';
    license = with lib.licenses; [ asl20 ];
  };
}
