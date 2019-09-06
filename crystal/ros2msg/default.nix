
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, ament-flake8, pythonPackages, ament-pep257, std-msgs, ament-copyright, ament-index-python, ros2cli }:
buildRosPackage {
  pname = "ros-crystal-ros2msg";
  version = "0.6.3";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ros2cli-release/archive/release/crystal/ros2msg/0.6.3-0.tar.gz;
    sha256 = "2f916f28321281cdd792cac534f4b4eb6b983c02eb551e58012c7d2a041442ec";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ std-srvs ament-flake8 pythonPackages.pytest ament-pep257 std-msgs ament-copyright ];
  propagatedBuildInputs = [ ament-index-python ros2cli ];

  meta = {
    description = ''The msg command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
