
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages, ros2cli, tracetools-trace }:
buildRosPackage {
  pname = "ros-rolling-ros2trace";
  version = "8.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/rolling/ros2trace/8.8.0-1.tar.gz";
    name = "8.8.0-1.tar.gz";
    sha256 = "be28f44f0f2aff8afa3d964c05e63d87b83fcc0b30aa76e1b8e33bd51a0a9d72";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-trace ];

  meta = {
    description = "The trace command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
