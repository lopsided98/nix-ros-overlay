
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, geometry-msgs, rclpy, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-aruco-tracker";
  version = "1.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_applications-release/archive/release/humble/turtlebot3_aruco_tracker/1.3.3-2.tar.gz";
    name = "1.3.3-2.tar.gz";
    sha256 = "48361d3b397b0b2c8cf767c4484e3634e14932812a40eb63b3b1f5deddeaba78";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ cv-bridge geometry-msgs rclpy sensor-msgs tf2-ros ];

  meta = {
    description = "ArUco Tracker for TurtleBot3 Examples.";
    license = with lib.licenses; [ asl20 ];
  };
}
