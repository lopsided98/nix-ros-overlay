
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, compressed-image-transport, cv-bridge, image-transport, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-yolo-object-detection";
  version = "1.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_applications-release/archive/release/humble/turtlebot3_yolo_object_detection/1.3.3-2.tar.gz";
    name = "1.3.3-2.tar.gz";
    sha256 = "b7c467e8b3e0f73e12c45af8b0ed4ed019d07397c56c235e271a602d2c2d425e";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ compressed-image-transport cv-bridge image-transport rclpy sensor-msgs std-msgs ];

  meta = {
    description = "YOLO-based object detection for TurtleBot3";
    license = with lib.licenses; [ asl20 ];
  };
}
