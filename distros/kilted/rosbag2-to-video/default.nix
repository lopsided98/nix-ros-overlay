
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, cv-bridge, opencv, python3Packages, rclpy, ros2bag, rosbag2-py, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-kilted-rosbag2-to-video";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_to_video-release/archive/release/kilted/rosbag2_to_video/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "e36327f2cc208cc9f63f5e26424836d4fb9e7b9ff555c4d8d6dd7e3c51fbffd9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ cv-bridge opencv opencv.cxxdev python3Packages.opencv4 rclpy ros2bag rosbag2-py rosidl-runtime-py ];

  meta = {
    description = "Command line tool to create a video from a rosbag recording";
    license = with lib.licenses; [ asl20 ];
  };
}
