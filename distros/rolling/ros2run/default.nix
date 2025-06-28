
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-rolling-ros2run";
  version = "0.39.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2run/0.39.1-1.tar.gz";
    name = "0.39.1-1.tar.gz";
    sha256 = "cb961bc8ef144b13c57300092ea0afb7c0b23ce6941f4bb75fd984c62b35db0b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest python3Packages.pytest-timeout ];
  propagatedBuildInputs = [ ros2cli ros2pkg ];

  meta = {
    description = "The run command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
