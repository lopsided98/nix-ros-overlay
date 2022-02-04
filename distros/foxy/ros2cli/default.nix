
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, rclpy, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-ros2cli";
  version = "0.9.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/foxy/ros2cli/0.9.11-1.tar.gz";
    name = "0.9.11-1.tar.gz";
    sha256 = "45956c6ff6ee0c5b7b759980c4774cb7e00ff24bbd1b77b3be80b98d07870b82";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest test-msgs ];
  propagatedBuildInputs = [ python3Packages.netifaces python3Packages.setuptools rclpy ];

  meta = {
    description = ''Framework for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
