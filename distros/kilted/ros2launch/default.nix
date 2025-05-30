
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-ros, launch-xml, launch-yaml, python3Packages, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-kilted-ros2launch";
  version = "0.28.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/kilted/ros2launch/0.28.1-2.tar.gz";
    name = "0.28.1-2.tar.gz";
    sha256 = "743563f0f1a5715244228fa6dc8c31943e903ecd88d4bd7aec7d7acc44cfaf4c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros launch-xml launch-yaml ros2cli ros2pkg ];

  meta = {
    description = "The launch command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
