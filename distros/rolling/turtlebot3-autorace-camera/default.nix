
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-turtlebot3-autorace-camera";
  version = "1.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_autorace-release/archive/release/rolling/turtlebot3_autorace_camera/1.2.2-2.tar.gz";
    name = "1.2.2-2.tar.gz";
    sha256 = "0dddd5212b0a4b0765ffd53a722b9168717c5e5552dc6afaa8d0b3c67567d926";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ cv-bridge rclpy sensor-msgs std-msgs ];

  meta = {
    description = "ROS 2 packages for camera calibration and image processing in TurtleBot AutoRace";
    license = with lib.licenses; [ asl20 ];
  };
}
