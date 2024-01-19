
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-rosidl-cli";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/iron/rosidl_cli/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "9f2194ed7ee6e783e32b0601faa15d1bdb5aa234837d610b0a7c93bb831ed69f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.argcomplete python3Packages.importlib-metadata ];

  meta = {
    description = ''Command line tools for ROS interface generation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
