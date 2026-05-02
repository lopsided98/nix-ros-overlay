
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, play-motion2, python3Packages, rclpy, ros2cli }:
buildRosPackage {
  pname = "ros-rolling-play-motion2-cli";
  version = "1.8.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/play_motion2-release/archive/release/rolling/play_motion2_cli/1.8.4-2.tar.gz";
    name = "1.8.4-2.tar.gz";
    sha256 = "c2ac6cfc490d5217cee91f3ac4f027ea58f11dbd57d9f0de945dc72bb1af3355";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout ];
  propagatedBuildInputs = [ play-motion2 rclpy ros2cli ];

  meta = {
    description = "The play_motion command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
