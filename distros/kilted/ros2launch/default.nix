
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-ros, launch-xml, launch-yaml, python3Packages, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-kilted-ros2launch";
  version = "0.28.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/kilted/ros2launch/0.28.6-1.tar.gz";
    name = "0.28.6-1.tar.gz";
    sha256 = "2e85a3fbcb82c163182f2d91e54ce52392233e25df0ac75d7566a819bf15e0d2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros launch-xml launch-yaml ros2cli ros2pkg ];

  meta = {
    description = "The launch command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
