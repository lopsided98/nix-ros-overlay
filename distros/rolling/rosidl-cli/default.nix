
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-rosidl-cli";
  version = "4.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_cli/4.9.0-1.tar.gz";
    name = "4.9.0-1.tar.gz";
    sha256 = "05b88fb5e6f153e5ef84f66990404f83aa32cb8a115efacf7f43125610260f4a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.argcomplete python3Packages.importlib-metadata ];

  meta = {
    description = "Command line tools for ROS interface generation.";
    license = with lib.licenses; [ asl20 ];
  };
}
