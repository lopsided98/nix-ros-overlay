
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, pythonPackages, ros2cli, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-crystal-ros2msg";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/crystal/ros2msg/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "2f916f28321281cdd792cac534f4b4eb6b983c02eb551e58012c7d2a041442ec";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest std-msgs std-srvs ];
  propagatedBuildInputs = [ ament-index-python ros2cli ];

  meta = {
    description = ''The msg command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
