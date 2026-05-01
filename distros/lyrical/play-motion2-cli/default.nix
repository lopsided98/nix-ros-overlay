
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, play-motion2, python3Packages, rclpy, ros2cli }:
buildRosPackage {
  pname = "ros-lyrical-play-motion2-cli";
  version = "1.8.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/play_motion2-release/archive/release/lyrical/play_motion2_cli/1.8.4-3.tar.gz";
    name = "1.8.4-3.tar.gz";
    sha256 = "6be0eaa91604cb84134c49ebd32ef3c61cc98e5124f3e07c3babf03ac26c905c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout ];
  propagatedBuildInputs = [ play-motion2 rclpy ros2cli ];

  meta = {
    description = "The play_motion command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
