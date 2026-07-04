
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-rosidl-cli";
  version = "4.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/kilted/rosidl_cli/4.9.7-1.tar.gz";
    name = "4.9.7-1.tar.gz";
    sha256 = "70c982a929b9d0b7e186780c62d8f033ed0fe2a8ec767a47042e223bd2042478";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.argcomplete ];

  meta = {
    description = "Command line tools for ROS interface generation.";
    license = with lib.licenses; [ asl20 ];
  };
}
