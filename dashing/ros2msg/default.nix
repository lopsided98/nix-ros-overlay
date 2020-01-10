
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, pythonPackages, ros2cli, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-dashing-ros2msg";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2msg/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "be9517679ff27f944efe3e20bc90a6e6914dd3843c5780fee554692486f242be";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest std-msgs std-srvs ];
  propagatedBuildInputs = [ ament-index-python ros2cli ];

  meta = {
    description = ''The msg command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
