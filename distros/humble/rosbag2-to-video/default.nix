
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, cv-bridge, opencv, python3Packages, rclpy, ros2bag, rosbag2-py, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-humble-rosbag2-to-video";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_to_video-release/archive/release/humble/rosbag2_to_video/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "da54f376dd1f9b46c2be12a58e4dc2820b4c5539b9ef0f14fec8af2f3677f47c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ cv-bridge opencv opencv.cxxdev python3Packages.opencv4 rclpy ros2bag rosbag2-py rosidl-runtime-py ];

  meta = {
    description = "Command line tool to create a video from a rosbag recording";
    license = with lib.licenses; [ asl20 ];
  };
}
