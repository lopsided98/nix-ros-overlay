
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, play-motion2, python3Packages, rclpy, ros2cli }:
buildRosPackage {
  pname = "ros-humble-play-motion2-cli";
  version = "1.8.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/play_motion2-release/archive/release/humble/play_motion2_cli/1.8.2-1.tar.gz";
    name = "1.8.2-1.tar.gz";
    sha256 = "88d118bd2613727e8cd4074033107213b6a1a97669135ad3b98899e74d8bdf3c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout ];
  propagatedBuildInputs = [ play-motion2 rclpy ros2cli ];

  meta = {
    description = "The play_motion command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
