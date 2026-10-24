
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python3Packages, ros2cli }:
buildRosPackage {
  pname = "ros-rolling-ros2plugin";
  version = "6.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pluginlib-release/archive/release/rolling/ros2plugin/6.0.3-1.tar.gz";
    name = "6.0.3-1.tar.gz";
    sha256 = "0f0264177d7391e8acde1323b65c6ae14d75503d6fde08431d8de23b2ee55f41";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python ros2cli ];

  meta = {
    description = "The plugin command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
