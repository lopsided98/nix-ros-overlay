
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-turtlebot3-autorace-camera";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_autorace-release/archive/release/rolling/turtlebot3_autorace_camera/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "c316835bcc30e18da8716b140b90cb92cd4cc67f6bb12b59db63bc6492a3fc48";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ cv-bridge rclpy sensor-msgs std-msgs ];

  meta = {
    description = "ROS 2 packages for camera calibration and image processing in TurtleBot AutoRace";
    license = with lib.licenses; [ asl20 ];
  };
}
