
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, compressed-image-transport, cv-bridge, image-transport, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-yolo-object-detection";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_applications-release/archive/release/jazzy/turtlebot3_yolo_object_detection/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "b506eafc016b00d4d63ea6b87a4fde04125589cfca4e9d2d85f3b18617a60d85";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ compressed-image-transport cv-bridge image-transport rclpy sensor-msgs std-msgs ];

  meta = {
    description = "YOLO-based object detection for TurtleBot3";
    license = with lib.licenses; [ asl20 ];
  };
}
