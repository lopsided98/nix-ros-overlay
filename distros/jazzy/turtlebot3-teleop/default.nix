
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-teleop";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/jazzy/turtlebot3_teleop/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "ee544e16975c5da5eb55c59b13ef745c5abb3d395d0ebaaed8d167619c00e1e9";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = "Teleoperation node using keyboard for TurtleBot3.";
    license = with lib.licenses; [ asl20 ];
  };
}
