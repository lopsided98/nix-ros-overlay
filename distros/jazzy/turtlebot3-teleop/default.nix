
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-teleop";
  version = "2.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/jazzy/turtlebot3_teleop/2.3.7-1.tar.gz";
    name = "2.3.7-1.tar.gz";
    sha256 = "c5e8e71e7642c1027c7efba6218851f589e3ac1f0f890ff95612d73d535e3e78";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = "Teleoperation node using keyboard for TurtleBot3.";
    license = with lib.licenses; [ asl20 ];
  };
}
