
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-turtlebot3-autorace-camera";
  version = "1.2.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_autorace-release/archive/release/lyrical/turtlebot3_autorace_camera/1.2.2-3.tar.gz";
    name = "1.2.2-3.tar.gz";
    sha256 = "ba3906a4f3a80135e417b7af5cf2a4229c0ead01d9cf37ad28ca7b950ad09864";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ cv-bridge rclpy sensor-msgs std-msgs ];

  meta = {
    description = "ROS 2 packages for camera calibration and image processing in TurtleBot AutoRace";
    license = with lib.licenses; [ asl20 ];
  };
}
