
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-galactic-rosidl-cli";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/galactic/rosidl_cli/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "a87336fbf05e74e755d8f1ea81cc2d15df75c51622325ea91cab8009ce5cf9e8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.argcomplete python3Packages.importlib-metadata ];

  meta = {
    description = ''Command line tools for ROS interface generation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
