
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, pythonPackages, ros2cli, tracetools-trace }:
buildRosPackage {
  pname = "ros-jazzy-ros2trace";
  version = "8.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/ros2trace/8.2.1-1.tar.gz";
    name = "8.2.1-1.tar.gz";
    sha256 = "b360cb5988b02a1e69ae200f682d800fedbf26d128b201a6b7ab5e7d94682e2d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-trace ];

  meta = {
    description = "The trace command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
