
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, geometry-msgs, rclpy, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-aruco-tracker";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_applications-release/archive/release/jazzy/turtlebot3_aruco_tracker/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "e83e89adb4068e06ae8256ba7c77509b8c44ac9f3c6bd91ac408b23dd367078b";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ cv-bridge geometry-msgs rclpy sensor-msgs tf2-ros ];

  meta = {
    description = "ArUco Tracker for TurtleBot3 Examples.";
    license = with lib.licenses; [ asl20 ];
  };
}
