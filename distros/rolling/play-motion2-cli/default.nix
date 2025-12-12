
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, play-motion2, python3Packages, rclpy, ros2cli }:
buildRosPackage {
  pname = "ros-rolling-play-motion2-cli";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/play_motion2-release/archive/release/rolling/play_motion2_cli/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "e8de221cb1a192cb934d7cbdd1ea114b50614724099d954e7d56e519a56f9212";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout ];
  propagatedBuildInputs = [ play-motion2 rclpy ros2cli ];

  meta = {
    description = "The play_motion command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
