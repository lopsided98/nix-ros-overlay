
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, play-motion2, python3Packages, rclpy, ros2cli }:
buildRosPackage {
  pname = "ros-jazzy-play-motion2-cli";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/play_motion2-release/archive/release/jazzy/play_motion2_cli/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "fcaab2030506068d2ccf95932280aa867a60261af6b1e01385a9b00cd4c4f3d1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout ];
  propagatedBuildInputs = [ play-motion2 rclpy ros2cli ];

  meta = {
    description = "The play_motion command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
