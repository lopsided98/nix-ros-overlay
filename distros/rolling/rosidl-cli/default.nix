
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-rosidl-cli";
  version = "4.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_cli/4.5.1-2.tar.gz";
    name = "4.5.1-2.tar.gz";
    sha256 = "9ab0f190b78f5e232ef4a946e9a739ce5441d37c52eb71aa58baf34b80b42bf6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.argcomplete python3Packages.importlib-metadata ];

  meta = {
    description = ''Command line tools for ROS interface generation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
