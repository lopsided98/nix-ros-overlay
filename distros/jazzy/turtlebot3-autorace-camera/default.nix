
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-autorace-camera";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_autorace-release/archive/release/jazzy/turtlebot3_autorace_camera/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "7b04b38c0cd8403e687cc0d59a65d78f34d7d4129cee57d2e72f4a994c6cfa0b";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ cv-bridge rclpy sensor-msgs std-msgs ];

  meta = {
    description = "ROS 2 packages for camera calibration and image processing in TurtleBot AutoRace";
    license = with lib.licenses; [ asl20 ];
  };
}
