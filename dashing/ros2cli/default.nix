
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, rclpy, pythonPackages, ament-pep257, python3Packages, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-ros2cli";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2cli/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "6eaa08f15784ef4c3ff5a6c6290c85dbae796d6b3f4a1bf0a56bf5248bb76969";
  };

  buildType = "ament_python";
  checkInputs = [ ament-xmllint ament-flake8 pythonPackages.pytest ament-pep257 ament-copyright ];
  propagatedBuildInputs = [ rclpy python3Packages.setuptools ];

  meta = {
    description = ''Framework for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
