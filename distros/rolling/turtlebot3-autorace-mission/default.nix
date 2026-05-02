
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-turtlebot3-autorace-mission";
  version = "1.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_autorace-release/archive/release/rolling/turtlebot3_autorace_mission/1.2.2-2.tar.gz";
    name = "1.2.2-2.tar.gz";
    sha256 = "26421c7d77ef2f6b0908317ba6cf24f2acac4a1306615c90ea032de976235add";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = "ROS 2 packages for turtlebot3_autorace_mission";
    license = with lib.licenses; [ asl20 ];
  };
}
