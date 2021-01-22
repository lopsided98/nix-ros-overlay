
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-dashing-turtlebot3-teleop";
  version = "2.1.1-r2";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/dashing/turtlebot3_teleop/2.1.1-2.tar.gz";
    name = "2.1.1-2.tar.gz";
    sha256 = "be08480c5becea8d63551ebaecf49948821773269d8109c989b65814b82b6522";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = ''Teleoperation node using keyboard for TurtleBot3.'';
    license = with lib.licenses; [ asl20 ];
  };
}
