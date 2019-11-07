
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, pythonPackages, ament-pep257, ament-copyright, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-ros2node";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2node/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "52e68f40e79fc71425c1807d8d7f9cf0c5029d77d1b7eae3f0d7565e85007fe2";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ ament-xmllint ament-flake8 pythonPackages.pytest ament-pep257 ament-copyright ];
  propagatedBuildInputs = [ ros2cli ];

  meta = {
    description = ''The node command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
