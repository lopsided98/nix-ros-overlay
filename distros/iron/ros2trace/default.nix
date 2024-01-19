
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, pythonPackages, ros2cli, tracetools-trace }:
buildRosPackage {
  pname = "ros-iron-ros2trace";
  version = "6.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/iron/ros2trace/6.3.1-1.tar.gz";
    name = "6.3.1-1.tar.gz";
    sha256 = "2b3a0911208040a36a2c4a6a078e6a39ec7ce4fdc6b4c4edd280699ec747c431";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-trace ];

  meta = {
    description = ''The trace command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
