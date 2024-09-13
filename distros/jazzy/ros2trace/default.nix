
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, pythonPackages, ros2cli, tracetools-trace }:
buildRosPackage {
  pname = "ros-jazzy-ros2trace";
  version = "8.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/ros2trace/8.2.2-1.tar.gz";
    name = "8.2.2-1.tar.gz";
    sha256 = "aabf950f9e26965b06963a097cfe8e5855a98c6f1e2fda6716ce78b01ed7958e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-trace ];

  meta = {
    description = "The trace command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
