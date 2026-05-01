
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-turtlebot3-autorace-mission";
  version = "1.2.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_autorace-release/archive/release/lyrical/turtlebot3_autorace_mission/1.2.2-3.tar.gz";
    name = "1.2.2-3.tar.gz";
    sha256 = "dd1afbc53a38c20ef9460527c7a81293fa1e86c606ccb2841019ca49b57722aa";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = "ROS 2 packages for turtlebot3_autorace_mission";
    license = with lib.licenses; [ asl20 ];
  };
}
