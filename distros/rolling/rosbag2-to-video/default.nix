
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, cv-bridge, opencv, python3Packages, rclpy, ros2bag, rosbag2-py, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-to-video";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_to_video-release/archive/release/rolling/rosbag2_to_video/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "859a6e1b42aac4d91c21c51d5c92322dd47726d3c6f344059c21d4618aaa082c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ cv-bridge opencv opencv.cxxdev python3Packages.opencv4 rclpy ros2bag rosbag2-py rosidl-runtime-py ];

  meta = {
    description = "Command line tool to create a video from a rosbag recording";
    license = with lib.licenses; [ asl20 ];
  };
}
