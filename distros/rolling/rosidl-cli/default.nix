
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-rosidl-cli";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_cli/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "0db57aa344a3b4bfcdbf3cc1e2049b55611c578331d9d0ebf4e712547d25b5cb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.argcomplete python3Packages.importlib-metadata ];

  meta = {
    description = "Command line tools for ROS interface generation.";
    license = with lib.licenses; [ asl20 ];
  };
}
