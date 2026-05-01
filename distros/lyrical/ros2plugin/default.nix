
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python3Packages, rclpy, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-lyrical-ros2plugin";
  version = "5.8.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pluginlib-release/archive/release/lyrical/ros2plugin/5.8.4-3.tar.gz";
    name = "5.8.4-3.tar.gz";
    sha256 = "b15c54160f77aef21282591b6d70d30310cb224be2295717e5ab181eb53c8e19";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli ros2pkg ];

  meta = {
    description = "The plugin command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
