
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, launch-xml, launch-yaml, python3Packages, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-humble-ros2launch";
  version = "0.19.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/humble/ros2launch/0.19.10-1.tar.gz";
    name = "0.19.10-1.tar.gz";
    sha256 = "2fae8fa15cd9d6d4e8bc6080d3aa7e429be94ccfd794737930c19a0a98f7bb97";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros launch-xml launch-yaml ros2cli ros2pkg ];

  meta = {
    description = "The launch command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
